import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class NotificacionPage extends StatelessWidget {
  const NotificacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.08),
                    offset: Offset(5, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Robo de Casa",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Descripcion: Contrary to popular belief, Lorem Ipsum is not simply random text.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black.withOpacity(0.66),
                            ),
                          ),
                          spacingHeigth4,
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 15,
                              ),
                              spacingWidth2,
                              Text(
                                "26-01-2023",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              spacingWidth2,
                              Text(
                                "10:20 am",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK6h5JDGUqVsk7ODzodMNtYig8pFqhRTsyMQ&usqp=CAU"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.07),
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joel Chumbes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Card person developer",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5D6DFF),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Ubicacion \n GPS",
                            style:
                            TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.08),
                    offset: Offset(5, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Accidente de Transito",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Descripcion: Contrary to popular belief, Lorem Ipsum is not simply random text.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black.withOpacity(0.66),
                            ),
                          ),
                          spacingHeigth4,
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 15,
                              ),
                              spacingWidth2,
                              Text(
                                "26-01-2023",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              spacingWidth2,
                              Text(
                                "10:20 am",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://imagenes.america.elpais.com/resizer/dTOWP4Mxw1RgzaBROp9v8gXj4PA=/1960x1103/cloudfront-eu-central-1.images.arcpublishing.com/prisa/4EE2FPONHAKQNCP4XSIQQSWOG4.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.07),
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Roberto Carlos",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Card person developer",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5D6DFF),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Ubicacion \n GPS",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.08),
                    offset: Offset(5, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ambulancia",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Descripcion: Contrary to popular belief, Lorem Ipsum is not simply random text.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black.withOpacity(0.66),
                            ),
                          ),
                          spacingHeigth4,
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 15,
                              ),
                              spacingWidth2,
                              Text(
                                "26-01-2023",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              spacingWidth2,
                              Text(
                                "10:20 am",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.07),
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joel Chumbes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Card person developer",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5D6DFF),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Ubicacion \n GPS",
                            style:
                            TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.08),
                    offset: Offset(5, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alerta: Robo de Casa",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Descripcion: Contrary to popular belief, Lorem Ipsum is not simply random text.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black.withOpacity(0.66),
                            ),
                          ),
                          spacingHeigth4,
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 15,
                              ),
                              spacingWidth2,
                              Text(
                                "26-01-2023",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              spacingWidth2,
                              Text(
                                "10:20 am",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.07),
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joel Chumbes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Card person developer",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5D6DFF),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Ubicacion \n GPS",
                            style:
                            TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.08),
                    offset: Offset(5, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alerta: Robo de Casa",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Descripcion: Contrary to popular belief, Lorem Ipsum is not simply random text.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black.withOpacity(0.66),
                            ),
                          ),
                          spacingHeigth4,
                          Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 15,
                              ),
                              spacingWidth2,
                              Text(
                                "26-01-2023",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              spacingWidth2,
                              Text(
                                "10:20 am",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.07),
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joel Chumbes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Card person developer",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5D6DFF),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Ubicacion \n GPS",
                            style:
                            TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
