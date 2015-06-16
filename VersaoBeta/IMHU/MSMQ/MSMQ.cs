
using IMHU.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace MSMQUtil
{
    public class MSMQ
    {
        private static MSMQ instance;
        private static MessageQueue mq;
        private static Object forLock;

        private MSMQ()
        {
            forLock = new Object();
        }

        public static MSMQ getInstance(String QueueName)
        {
            lock (forLock)
            {
                if (instance == null)
                    instance = new MSMQ();

                CreateQueue(QueueName);
            }
            
            return instance;
        }

        public static Boolean CreateQueue(String QueueName)
        {
            if (!MessageQueue.Exists(QueueName))
            {
                Console.WriteLine("Queue does not exist. Creating transactional queue.");
                mq = MessageQueue.Create(QueueName, true);
                return true;
            }
            
            mq = new MessageQueue(QueueName);
            Console.WriteLine("Queue exists.");
            return false;
        }

        public void WriteQueue(String label, BaseClasse p)
        {
            System.Messaging.Message mm = new System.Messaging.Message();
            mm.Body = p;
            mm.Label = label;
            mq.Send(mm, MessageQueueTransactionType.Single);
        }

        public BaseClasse ReadQueue()
        {
            System.Messaging.Message message = new System.Messaging.Message();
            BaseClasse p;

            try
            {
                message = mq.Receive();
                message.Formatter = new XmlMessageFormatter(new Type[] { typeof(BaseClasse) });
                p = (BaseClasse)message.Body;
                mq.Close();
                return p;

            }
            catch (Exception ex)
            {
                mq.Close();
                throw ex.InnerException;
            }
        }
    }
}
