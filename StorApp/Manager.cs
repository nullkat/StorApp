using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace StorApp
{
    internal class Manager
    {
        public static MainWindow mainWindow;

        public static Users currentUser = new Users();
        public static Frame MainFrame { get; set; }

        public static StorDBEntities dbEntities = null;

        public static StorDBEntities getContext()
        {
            if (dbEntities == null)
            {
                dbEntities = new StorDBEntities();
            }
            return dbEntities;
        }
    }
}
