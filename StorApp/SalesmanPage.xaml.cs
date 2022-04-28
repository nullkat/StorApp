using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace StorApp
{
    /// <summary>
    /// Логика взаимодействия для SalesmanPage.xaml
    /// </summary>
    public partial class SalesmanPage : Page
    {
        public SalesmanPage()
        {
            InitializeComponent();
            txtFIO.Text = Manager.currentUser.Fullname;
            txtRole.Text = Manager.currentUser.Role;

            int time = 0;

            var timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += new EventHandler((object s, EventArgs a) =>
            {
                time += 1;
                TimerButt.Content = string.Format("{0}:{1}:{2}", time / 600, time / 60, time % 60);
            });
            timer.Start();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ButtonPay_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new PayPage());
        }

        private void ProductUserControl_Loaded(object sender, RoutedEventArgs e)
        {

        }
    }
}
