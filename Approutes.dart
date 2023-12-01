import 'package:scood_app/core/constans/Routes.dart';
import 'package:scood_app/core/middleware/appmiddleware.dart';
import 'package:scood_app/view/screen/Auth/forgetpassword.dart';
import 'package:scood_app/view/screen/address/add.dart';
import 'package:scood_app/view/screen/address/add2.dart';
import 'package:scood_app/view/screen/address/vieew.dart';
import 'package:scood_app/view/screen/adoption/view.dart';
import 'package:scood_app/view/screen/categories/add.dart';
import 'package:scood_app/view/screen/categories/update.dart';
import 'package:scood_app/view/screen/categories/view.dart';
import 'package:scood_app/view/screen/checkorders.dart';
import 'package:scood_app/view/screen/favorite.dart';
import 'package:scood_app/view/screen/petcare/add.dart';
import 'package:scood_app/view/screen/petcare/health.dart';
import 'package:scood_app/view/screen/items/add.dart';
import 'package:scood_app/view/screen/items/update.dart';
import 'package:scood_app/view/screen/items/view.dart';
import 'package:scood_app/view/screen/orderdetails.dart';
import 'package:scood_app/view/screen/orders.dart';
import 'package:scood_app/view/screen/product/add.dart';
import 'package:scood_app/view/screen/product/updata.dart';
import 'package:scood_app/view/screen/product/view.dart';
import 'package:scood_app/view/screen/productdetales.dart';
import 'package:scood_app/view/screen/homescreen.dart';
import 'package:scood_app/view/screen/Auth/login_page.dart';
import 'package:scood_app/view/screen/Auth/resetpasswordpage.dart';
import 'package:scood_app/view/screen/Auth/singup.dart';
import 'package:scood_app/view/screen/Auth/singupveryfi.dart';
import 'package:scood_app/view/screen/Auth/successsingup.dart';
import 'package:scood_app/view/screen/Auth/successveryficode.dart';
import 'package:scood_app/view/screen/Auth/veryficode.dart';
import 'package:scood_app/view/screen/itema.dart';
import 'package:scood_app/view/screen/onbording.dart';
import 'package:get/get.dart';
import 'package:scood_app/view/screen/sex.dart';
import 'view/screen/card.dart';

List<GetPage<dynamic>>? routes=[
  GetPage(name: '/' , page: ()=>const onbordingpage(),middlewares: [appmiddleware()]),
  
  // GetPage(name: '/' ,                                       page: ()=> productdetails()),
  GetPage(name: Approutes.login ,                              page: ()=>  const loginpage(), ),
  GetPage(name:Approutes.singup ,                              page: ()=>  singuppage()),
  GetPage(name:Approutes. fofgetpassword,                      page: ()=>  fofgetpasswordpage()),
  GetPage(name:Approutes.veryficode ,                          page: ()=>  veryficodepage()),
  GetPage(name:Approutes.successveryficode ,                   page: ()=>  const successveryficodepage()),
  GetPage(name:Approutes.successingup ,                        page: ()=>  successinguppage()),
  GetPage(name:Approutes.singupveryficode ,                    page: ()=>  singupveryficodepage()),
  GetPage(name:Approutes.onbording ,                           page: ()=>  const onbordingpage()),
  GetPage(name:Approutes.resetpassword ,                       page: ()=>  resetpasswordpage()),
  GetPage(name:Approutes.home ,                                page: ()=>  const homescreen()),
  GetPage(name:Approutes.homescreen ,                          page: ()=>  const homescreen()),
  GetPage(name:Approutes.items ,                               page: ()=>  const items()),
  GetPage(name:Approutes.productdetails ,                      page: ()=>  const productdetails()),
  GetPage(name:Approutes.favorit ,                             page: ()=>  const favoritpage()),
  GetPage(name:Approutes.cardpage ,                            page: ()=>  const cardpage()),
  GetPage(name:Approutes.addresspage ,                         page: ()=>   addresspage()),
  GetPage(name:Approutes.addaddresspage ,                      page: ()=>  const addaddresspage()),
  GetPage(name:Approutes.addaddresspage2 ,                     page: ()=>  const addaddresspage2()),
  GetPage(name:Approutes.checkoutpage ,                        page: ()=>  const checkoutpage()),
  GetPage(name:Approutes.orders ,                              page: ()=>  const orders()),
  GetPage(name:Approutes.ordersdetales ,                              page: ()=>  const ordersdetales()),

  GetPage(name: Approutes.addcategorie           ,page: ()=> addcategorie(),),
  GetPage(name: Approutes.viewcategorie           ,page: ()=> viewcategorie(),),
  // GetPage(name: Approutes.deletecategorie           ,page: ()=> deletecategorie(),),
  GetPage(name: Approutes.updatecategorie           ,page: ()=> const updatecategorie(),),

  GetPage(name: Approutes.additems           ,page: ()=> additems(),),
  GetPage(name: Approutes.viewitems           ,page: ()=> viewitems(),),
  GetPage(name: Approutes.updateitems           ,page: ()=> updateitems(),),
    GetPage(name: Approutes.healthypage           ,page: ()=> healthypage(),),
     GetPage(name: Approutes.productpage           ,page: ()=> productpage(),),
      GetPage(name: Approutes.addproductpage           ,page: ()=> addproductpage(),),
      GetPage(name: Approutes.updateproductepage           ,page: ()=> updateproductepage(),),
      GetPage(name: Approutes.addpetcarepage           ,page: ()=> addpetcarepage(),),
      // GetPage(name: Approutes.sexdetails           ,page: ()=> sexdetails(),),
      GetPage(name: Approutes.adoptionpadg           ,page: ()=> adoptionpadg(),),

  ];