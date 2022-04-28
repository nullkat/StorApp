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
    /// Логика взаимодействия для WelcomePage.xaml
    /// </summary>
    public partial class WelcomePage : Page
    {
        Page pageToStart;
        public WelcomePage(Page pageToStart)
        {
            this.pageToStart = pageToStart;
            InitializeComponent();
            txtSurname.Text = Manager.currentUser.Fullname.Split(' ')[0];
            txtName.Text = Manager.currentUser.Fullname.Split(' ')[1];
            txtMiddleName.Text = Manager.currentUser.Fullname.Split(' ')[2];

            Manager.mainWindow.header.Text = "HELLOWINDOW";
            Manager.mainWindow.Title = "HELLOWINDOW";
        }

        private void ContinueButton_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(pageToStart);
        }
    }
}
