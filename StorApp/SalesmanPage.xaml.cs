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
