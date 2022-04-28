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
using System.Windows.Shapes;

namespace StorApp
{
    /// <summary>
    /// Логика взаимодействия для CaptchaWindow.xaml
    /// </summary>
    public partial class CaptchaWindow : Window
    {
        String login;
        String password;
        public CaptchaWindow(String login, String password)
        {
            InitializeComponent();
            this.login = login;
            this.password = password;
        }

        private void ButtonLogin_Click(object sender, RoutedEventArgs e)
        {
            if (txtwCaptcha.Text.Contains("534Ad"))
            {
                tryAuth();
            } else
            {
                MessageBox.Show("Неверно введена каптча!");
            }
        }

        private void tryAuth()
        {
            this.Hide();
            Page pageToStartFrom = null;
            var db = Manager.getContext();
            List<Users> findUsers = db.Users.Where(users => users.Login == login && users.Password == password).ToList();

            String header = "";

            if (findUsers.Count > 0)
            {
                Users usr = findUsers[0];
                Manager.currentUser = usr;
                if (usr.Role.Contains("Продавец"))
                {
                    pageToStartFrom = new SalesmanPage();
                    header = "SALESMAN";
                }
                else if (usr.Role.Contains("Менеджер"))
                {
                    pageToStartFrom = new ManagerPage();
                    header = "STOREKEEPER";
                }
                else if (usr.Role.Contains("Кладовщик"))
                {
                    pageToStartFrom = new StorekeeperPage();
                    header = "MANAGER";
                }
                else
                {
                    MessageBox.Show("Вашему аккаунту не " +
                        "назначена роль. Свяжитесь с администратором.");
                }
                Window mainWindow = new MainWindow(pageToStartFrom);
                Manager.mainWindow.header.Text = header;
                Manager.mainWindow.Title = header;
                Owner.Hide();

                mainWindow.Show();
            }
            else
            {
                MessageBox.Show("Неверный логин или пароль." + login + "   " + password);
            }
        }
    }
}
