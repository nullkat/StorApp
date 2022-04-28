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
    /// Логика взаимодействия для ProductUserControl.xaml
    /// </summary>
    public partial class ProductUserControl : UserControl
    {
        Product product = null;
        public ProductUserControl()
        {
            InitializeComponent();
            txtProductName.Text = "Product name";
        }

        public ProductUserControl(Product product)
        {
            InitializeComponent();
            this.product = product;
            txtProductName.Text = this.product.Name;
        }

        private void btnTakeCart_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
