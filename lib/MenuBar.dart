// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFFD428),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBQVFBcVFRQXGBcZGRoZGRkaGhoZGhoXFxcaGRoaFxkdICwjGiApIBoaJTYkKS0vMzMzGSI4PjgyPSwyMy8BCwsLDw4PHRISHjIpIykyMjI0MjIyMjIyMjIyMjIyMjIyMjI0MjQyMjIyMjIyMjIyOjIyMjIyMjIyMjIyMjIyMv/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xABQEAACAQIDBAYECAoFCwUAAAABAgMAEQQSIQUGMUETIlFhcYEykaGxBxQjQnLB0fAVM1JigpKTorLhU1TCw9IWFyRDRGNzg+Lj8TQ1RWR0/8QAGgEAAwEBAQEAAAAAAAAAAAAAAAECAwQFBv/EADARAAICAgEDAQYEBwEAAAAAAAABAhEDIRIEMUFRExQiMoGRYXGhsSNCUsHR4fEz/9oADAMBAAIRAxEAPwDjIozRrxoMKBgjGtOkA+z6/wCVJhQkmwvYEnw7aeZLcuJAoAaajNALQFIA1H1UKUKKgBMvCitc+VKdb0GNhQAVxwpHI+NGDqKNRx8aYDbcBSgL0hjS1OlA13CkPKgGoNSaBPuOq16XTSCnaQCGHWFHINKMrrR0AJThSqFEWoAOhQoUACiajoGgBmLjT1Mx8aeoAFFR0KACIHOiW3KlotzaksttAKAFSZb+Q9woVZQrhyozGbNYXsFIvblQpBZSLS8tIWnSNKoESMBL0bE2vdbfvKfqpxsSWJJ7QeXLNbl3++oajSlikMVI97ffsojSRR0CY4hGVr8Ta3r1pA50QpSc/CgBDNYUlufhRycKBoAJRwvS5FIHjwptjqK6PvxussOysFiFXrWVZP8AmLmU+sW86BnNDypROgo1Tto21piGyaIUphSbUAOJTgptDTtAwUKFOJGTSEkNKb0TLqDUpMMedEcOSaB0MUKXIoBtSKBAoWoU9GlA0NqlEwtU1IDz/nUaUa0rHQ2V0oqdYaU0aEJgFOJrpYHy+um6egXWhiLCIiw4UKr5GIJo6VAQU408eFMpxp0mwqgAvClUSm4o6ABQoUKADApQXQ+FGq/fyo0BIPhQMaCXNBIyzZQCSdABxJ7AK13wb7FGKxqK6kx2YsfBToO01oN3d30i2sMOVvld7sdWKgEi35ItUynRpjxOVvskr+hjNmbDu6iW9yQBGPSJJt1iPRHcNfCu2bcxSTPNssqt/iqPFcAjOtyFsfBbeBrH7Q2T0e2EjUWV5kZR+abNrVXv5tR02s80R68Lpl7zGouD3HUedZ233OqWOCrivF/tRmclwxMClVOVm6MhQ17WLKLA3paYWI8Yh5Fh9ddaw2D2XjlGJzdE7XLxlh1XPpdXx7ONTsDups53DK+cKQQt9ARbj2g9nfSd3S/c1hmhwblHf5f3OTDddWTN0TAdob7agNsCLtkH6p9wr02sCBcoVQvYALeqqnG7FwLI5kijC65m9EjvuLEeVXxl4Zkuowv5ofY87HdxeUjjxjv7moxu9/vl/SRx7r1sZMLBnYQyZo7sUYn5oJsLnwHrpqSBc+SN899AwLILkd5FiD26aVh7Zp0z0PcsE4JxXffkzcO7Dk6S4cj6bKf3kFWUO6cjf0R+jLEfYWBrcbqbunECUtiXGQ5Mqur2bKDc6G/Ht1qHtLCS4Sfo5GSVSgYHLGDcm3Wul63U/h5eDheLE58It32KRNx5itwtz2Ag+4mqjae7uJj0+Ly+Ijc+0CtyuLMal2ijCggHrRg3IzCwA7OdXOwNo9LII+jy5gSpDaWAvrY0lmjLQsnSSgnLwjgmLwzoeurL9IFffTCWPMV6rl2USNHPrb7az+39kxxxmSQKUHpEqHtc24ZSTVttHJGEZPTPPCR61Pw0VbXaS4OzMIYwBzKKhPh1R7SKo8TFGVzxrl1tpwIqPaJnTLopRg5WtbryVsgyrc6dg76gSR2o8QhMh7Afq5VOxMNrVRyIrGXSmimpqVLIo0veo/SC9UhMQFqbg47kUwljwq82VhLgG1TJgUGOS0jeXuFCrHauG+VbTs/hFCixFFHxp48KZUXp4jSrEBaOlRKOB7PrH86UwHtoAbFKFGq07hsMzm3Adp+rtpNlRi5Ol3G11I+/Ktz8GO7a4nEkTC6CNiVHqFz4ms6MJk5Hx5mulbiS/FMFiMURrmVU77an31m5nV7vxjb2/AvcXAfF8bihb8QjAcALA2FuQrT4TAodox4oXJmgYi2XICAobra5jw4aceNNbYiRIMXiw4SPERxNmPAFrKSbanS2nfUfdnb8K7PPWJaEvGM1lYlrnq8bDj28Kla2E583ru9V9P8AJL2ps8SbVwkykWETk6cct9Qb2vqB5CuK7yYrpMZiHvxmk/jIruW6WKEmFWXQGPpVsCToesLk6nS32CvPGMlvJIe13PrYmqWxwbg2n40S8PjGTgbVZYbbEg+cfXWa6WlpiaJQTOiHVVpm3n3omWM3kYgDtPkKqhvJKEzB5M2bKyrIw4gkEEcapRjFNgRfXh3+FS44ixuImvodFYeibg9lQoqPc19q5P8AhtfYsn3iObVncZc2YsTyzW1PG1qUm8KkG4OgvwRtLgcQT2iqw4B7W6Fh6XMD0xY8T3U18UbW6Mbi2si6DQ6a9wo4RYe8Z0/H2Nngd6pMMxWNwl7E5Y49cxyi5C3PAVLx21o5PlMRkDHq57Nm7baHhp2Vh1wzEnNnJNhmLoSArZhbzqzh2c8hXMZGte2qj0gAeHHTTzopdm9D5W3JRSfh/wCTYxbOwrOkZdekYXUEm5U39H1H1VbbJGEw7pMJkLAMI80wCgaq1lJ11zDsvfnWX2du07AZ+l6sXRxnL1kIk6SNwwPFeHDUVMg2DLEVYSI7BGRulhJQhpDJcLm0NyRVRhBbs5cuTNK4vt+Zvpt5FuOsvI2DjUfZVNvVtfp4ejLNEtwSVsxaxvbXlWOxexHa3ykRsmUgrlF8zHQZSBxp7as9lC3GgF7cL25d1OcqWnYdN06nP4lX1KPHxq9z0jhsoUaLYgXsDrpxOtjxpCQWjVfvwohqwHaR76kzyasbXtw9XsrKL7HpdTjjHHJr0Mzi4PlGt9+rVod1sXiZXEWUhQt8zhQMwNtOfomrHZm75kcvI3flXwtqx+ytxunh7TTjtjgPr6WuiO2fO2c9/wA3WJW3SSxrfgF6WRjbj1Uj9t6scH8F5dQxxYAuRboWuCpsRZmBGo7K6Xt1MRGsb4fD9O+YqUuFsrKetmPDUD105seCfoQ08YilLOSgIYKCxygEE8rVpQHIdvblnDGQxOziKKOR8wAJDvKrFQOSiMG3YSeVXOxdnAxIwGhF/ZWw2gmWaXQnNhlXw602p9dV+7EAOEiNvmD3VEo2KRidrYH5Z9Oz+EUK0W1cJ8q3l/CKFRQWcdj408w0pqPjTrnStAAg0pYWkxnhUqGO517aTHFWOYDCl3UHmeHmK6tjPg+dJIuiF42WMMfyWuA3h41iN1MLnxUCdsiD2itYN/p4sXMc2aLpXAU8LAkeXCspOzphCSdR7my2ruzgZAiNIqNGGHEX9LUnzvWW312hBHh1weHa4VrsRzNYjFbUklnkkUnNI7GwPaSaQ0kYvnkzyHgqdZV7c7nTlwW+tTTfZHTjjGDTnI2m0ttq+xBCT11kiS35glUg+rTyrLu7IzKCQDIb+WeouMe0ZH5yfxqfqqVimBk/TPtz0J3DZXslDqkl52ardneEYfDYiJuLg9H9MoQfYB6q5TivSb6R95rYSp6H0/7D1QYfBxySFZJDGGdwCEz6gjkXXtp4yushGNy9X/YpwKJl1A7a0e8OysJh2CRY0Yhyt2Cw5FU3Ays+dutYk6Dl31nZD6R7NB9/vwrc8xqNWibs3FKrKoU6souDl52vpqfXVzvXi3SPDJGzIpWRmykrmbpWW7W42VVGtZWIEa8+I8qvt65Mywnuf94qftqaSkjdZJPBJejRnb3oqC8aI1Zx2LyG16k4bEyL6LsPOmEcAUqFqTGnRtNib2zw2DSNl7dPbWlfe13FxJ7vqrmnxtSug8R9YpjpCPQJHdXM8Sk77HR7Vr8TfYzeOe+jp+zjPvWqtdqYiWQRrDFI7GwUBkZjxsLSAXPIW1OljwrKJiW45jUmPFXNze41BBsQRwI76tQ4iWef8raL+TaHROFkjKEEZ1zMGQnkyOqsLePrqwBBzEEMCpYEahha9wfKi2/t4bQwcIlEfxuJgnSMyxlkbQMWYhSLizDkSG0GYVSYWeXBsYMTGyK4Nr/Nzi2eMjRkNxexINgRw1fBNaNffZuLjLdo6VsWLTy/nWi3Wh/0iXvggPtlrJ7M2vGidc6kDhrp3eNa7d2FHxBvm0w8XB3Uek3HKRfzqoHD5NkqAVGxcsajrui/SYL7zRtgIiNY0PeyhvfRphY09GNB9FBe/kK0GZLEyxyTv0ciPfD/ADWVuEjDkfzqg7rRf6FD9Ae6tFtLDhsSBexMD5TzBEii4/W9tVu6kFsFB/w191UDKfHQ/KN5e4UdXE8JzGhU0RZ5qi409TUNTcPDm0pM1SsOOLq3qdgsMXZVUXZmAA7ybAVrtzd1vjWExLAdZFHR9pYAmw9VS9ythGLPjZ1yxwqWS/zpOCAdutQ2aJUTNnbsPg9pYdW1AQyX5XRCza9xFc9kcsSTzJPrN661sPeBcRgp5ZT8tAkwU8ysqkD26VycrUSOrp03LYyqZrDtJHtNSBCF9R/hNFhvTX6RHtNO5cxYJdgOJAuADpqRoNdKcWRmX8RfQtIlUmzoHW4JUkgG2ouRrxAPlTmMfO6tlVbsNEGVR1WOg8STr21HlxCILu4Xx4+Q4mqzFbwJ1ciliDe50HAjx591ZJSel2PYyzww+KTXL9TRslzF/wAT+7krPYpR0baf0p887fYKrsVteZ7XbKAdAvV5EcRrwJ586Zj2g2To9BYMAe0MSbHv1OtbQg47Z5HV9VHLqK8kOEaX7x76Uy6Dv1+/rokOhXgCRrx91SJwtxZ1sB2Px/VrQ5F2YiCO519EC7HsUfbw86t9vIWgie3Zfuui/fyqlzMSEDdUkcLgEnQE6XJ8e+1dG2dszDyQoMRcRk6nNlvluBY3H3FTJ00dGGLljnX4HMKFdJ2juvgwLxRl15MsjP67VlMTs1EPonu1NvfRzRmumyNXRQU+qgc/mn66s1wifke2pUeHj/IY+r1amhzQ10s2Z1WtTufn3H3VoZMPARYxEd6gA/xW9nOm48FCPmM/YGyrbzXU0c4le6ZPQoFOunqpdaT4jhLfipL9zfzplsBByST1n20ucQ90yehX7ODSOsarmZjYAW1NWW2to4kQjBy2ZIn6gdflYioIMatxC68DfgOwUmLBRIwZTiFdWDKwy6W1Fha9787+VStsOcQwkkc9JlCswi1e3BnC2GblccgOyjlvQPp58dx2QtgYzURuTf5hPdrl+yu4bqyjpge3Dx+xv51wN9nMDodOTkOtuwnq39V66Lsje2PDdG8oaS8AUiGzFXV9c4cqUFhfXt52NCe7Ri8U13TNl8Ju8uIwUURw7qHlZl1UMLKvFQeBuy8b1mvg23wx0+LbD4icupidgSkYZWQrwKgX0J434Cs1vrvfFtB8LkV40iZgxkKi+do9eqxGgQ8e2oOw9s/EsU+KRBKERltmsDnZV9IA9t+HKtSTueMf/TIhfjBN+7LB9tQt1nvgofoCud4H4ThJjIpJohGixyREoxcgSPE2ciwuB0Y0HJj2WOu3QxgOCi15fXRZMi6lfU0KhST6mhS5GZ52gi1tzrVbp7OaR5CiZ+jjdyNOFiOYPb2VmY0NgRzJF/C2nurqO6GNj2bg1lkAL4qVUA7IgbOfDX2VEtnRHWydszb/AODMHh7LdpZC7r/u+FZ/eje2TFXj9GK9wg0GnDSom/uOWTGFYiOiiVUS3Dhc28zVGi1L0b44cnZIwuIdQyg2DixHbrzpt11FOIlGydYaff7ismz0cWNIiGTL1soNixsb2Juw14VPwu0HsI3OUEn5NQFQZTpcDjqNL3qrxA66/kkm9uNi5vpUuO3TPcZmzMEt6NwSB5WAq38pEP8A2WkRNuYNmmXKLlx3DVdOfdalRbvlSnSyKgY201PAnnYcu/jTm0JpjGJDoA62tppc+fELVmmy1JjYuTmbl9BjxN70ubilsUunhPJJ07019RrDYfBxtGcjSdbrBtQRkY2INhxty5VlcUwZmIAHWOg7ya6hszZ0YkgGQHrnU68IpO2uYYr8Y47WP8VVilyOfrIKCSSSGEaxvSnkJJPbQWK5tcVKjwqXGZx5W/nWraOOMZSWg4XcqLsbDUAaAd+nOpuM2bCsasswd2bVRbqrbiRcnjprbwq4j2XhwLAu4/NV9fWanYfZGf8AF4SRu8x/XWftoLsmdcegm+8kjFBGQ3ViD2gkGr7Z2KzxNJJY9G6LJYcVe4RrDiQykHtBHnsW3WnEJdYlSQqSA2UWOoHd32Na3HbCgXAxkwRiULH17ZjdrZmvaxPeb0nOM/FA4vppLjK/2OZqYfybfon7KsdhR4Z8RFG/oySKhAVgbv1VsbW9Ire/K9bjBbNAsGSO1usCqgg3+ZcWOnbWV3t2ckaxOqRo5njF0CKbZ73JUXGoFZwgnvf1N8nXPi48V27plnjNycUkrBDE0YOhYhO+1ufGlf5NSKOvHCe2z/YarfhQnkfZ+EaT0hiJl8kMip49UDWs1uSrPJhkUnM7zJxtctDIACey5FdHFeh5yyz/AKn9zXyYCFdGSO/c7/U1NDA4b8hfWx99M7K2TJCoV4ATlHAo9jYWKm+tLx+wcTiL9AixHS3WKXAHMoDresFNcq4o9CWNqHJTfa+/6DvxDC80H7v1rRjZWFPJvJkHuUVRNuZtVDb45FfsM7E/vLUmDdXbikESxsBxtJGTbzWt+EfQ4V1GT+pl0mxcJzFu/Mx/vBU3D7txAh4pWB5WH1kmqLB7Pnj/AB8Mp1ObidbnUMLim9sYySCF5okZMiqOuCylmkVTdSe+sOScqo9CUcix8ud6vx9iw3h2QFylkRs5yGQKquGsSodiNQdbX56cxVfBufhFtMVxEjqQxhJU5zw6p0uL2J10AOh5HuziW2jhsQZ8qvDZkZBlIJVrXuTzXuq+/wAm5IypGKmsGjtcLbrMACL6jiOIrVpp67HIpwnCpafqkZjefY00yhyqQqDcQooyr1cty3EtbwGnAVJ3cxRihWMuerp6JOnlW62zs8SRAjRuHv8Asrn2LwbxA37aUmziTsuTtMfl/uP9tCsv8Z76KotlcTP7FwrymOJRoZGa/ZcKGueFgFHrqy3pxiyyqin5KJRGluxeLAdpOtL2JO0GBaTTNJI6xdouqK7eFlHtqojS/Grbo6MceQcKX1NSUU+VCOOpSJ2VlKR6GLF4EqlAjrLfx9h+2niQPsqq2vjWS2UDz1P2VMU26R05JQxwt+KCnQXzA+AHbmJFqm4UKoDuVVjfiQvEk8KzzbSmZcmcheYUKmb6WUDN53q12PufjsRqkDhT89xkX1tqfIGtnDVNnnx6ypXGNisZj4jG8YJa5OWw0uesNT+dVrsWbPFD2qxQ/oo4HstT53FSIr8YxKZibZUPO17EgE+wVa4B4sJlWKNWu5OZhz6NhzOvLmOFZZOKjSZvhyZp5Oclqq9PyLbZuCkZ4mVGIDMbkWH4txxOnOuaz7CTOxlxcEdySQpaVhr2Rgj2106DFSzOjsWIUvbhl1jbRbG1co/B8kjHJGx15A0YdEdUuXf1H2w2zk/1k8xsToixJ7WLVYYWbCpYphQx/PY/Yac2VuLjpHUiBguurCw4d9brZvweZLGWWNO7MCa1nL0ObGoJ/EN7JxcjRLJ0cSlicuVbkAG2pPO4NRMftSUnI0jeABNvGw0rf4HZ+EijCGUMFvw79ftqo/COyleyxvI5PAAn66wjjcntnRLqowVxjv1aMxhdgmVc1lcHtAOvO4I0NdQ/BSywRI5PUVDpxuqgerSqWHebDxmyYfKOdipbTh1VuTVhgd7cM46zZDyDBgT7K0jBK09pnNm6iWVJ0lXoTn2LFrlzITxKuy38bGs7vPuujopBYkPHxJNgrffvrTttjDgAmVAGFxc2uKp9r71YVBlEyE5hwYG2utaNxSpM5kpXtGU+EDYubB4eMEnLNI1ySSc2c3JPHjVTuZu80cmCk5DEvfzikrY7Q3i2fOirJiljyknqm+uo5gjhTOD29syMRhcahCOX61rm4Itpa3HjrT3Y9V+Ji1+DCD5u1MN4ZVuO4/K1Y7H3BWHERzHaGHkCNcpcDMLEWJLMOfZ6uNLGB2Vb/wByAJ11C0zPs7ZZ/wDlE88tGx6LzG7EYu7LPHLmIIDSKoUDkoQEam5OgvfupubdrFPhpYo8UqszIYiZZB0QVlLWkF3NwCLWA657BWbfYuzDw2tEP1P8QqM262ziQRtfD6cLrGf7wVVsnROG4e2/m7SUj/8AVifdkqftDYWLh2RiosZL0sjSRsrZ3ksmeIBczgEaqxtbnWbXcrA3021hh4JGP78VpNmbJwkeCmwY2rh2Msqy9LmjFsvRdXJ0pv8Ai+Ob53dTAd+CvZdoMWtvSRPXaUV0WPZaggtZtbnqrqb3F9OX1CslugcLgg6ttDDydIFtZ41sVLcs7Xvm9lbeDGRv6EiN9FgfdSS1sTe9FJtRMi68L9/fWF21la4NyOOqn7K1e+e1ViUZtD3+Nc1xW8KtoBcnhbWuWLk1sriiG8SXPV/dP2UKjttBuwUK0oB3eiIRSLhUsRCmXThnYXc+uqqNLHXjT6AsxdjckEk+RpWGhZmsikk87XJ8KUpHo4sbilYaoBqTRNMTooNaXZ2508mr2RfzybjnovEeytBgt0sKps8jSNzVBf2Lc1mt9jeWWMe7r9znmHwrseB17NfXVnh922ksWjzW7dfWeFdRw2w1AtHAFHa+nsqPjZsJhxknlLNa+RBYWJNuHgaGmvJkuoi3xjG/1OdQTR4QApHG0gYcR1V0uSx46DXSpeNn2liZESMySQyoHSRFMaWJKkMthlIZSLE34HnUjbW+0EEV8JhI1JK2ZxmNyOfkKze0t9MZNhoz0xRhK4bJ1RlZEdBoOWVvXWsYJqznnmlDIv8ARqsN8H2KuHklRLG/WNzp51cR7Dw8TK0mMANz6F72ynQEajy7Ky2Gx0kiqzOzZlB1J5i9N42MsFUcWzgX7TGwF/XXPy+KmenPHk4P4vol/wBOixT4NGTLmlazEMzFuC/nE8q5vjfhFkUkQxxxLyyqL+utTg2VJImkNkUSFj2KFF+HdRbobvYOSN2khiaQSzjrKhIjEpC9U6WFrA27tOFb4o89s8vO1iddznuL36xkhF5W49vdSRvFM3GRj5mtfv5urGsTtFEisvWGRFU9U6jQdmlctjnrWWNGeLKr2av8OsI2WxaVyFj5m7XGnnb11BfHtEOijJZ20dluWdz81ba2vwA48aa2V6TynUQxNJ+nJZFHqJPlV3udsZmhfFdIEkd3jic2zAIheQxBiB0hAIBJAADHlRCCRPUZucqXZC9knH4LNP0UkRZMueymwLKbMNSvAcQKt9k/CLjOkWOQpIjMFJZBmUNpcFbcL31B4VF2hsx0w7SxEyrGQCGvc5lBbKwJDnrWzAnrAjjWRwu340N2gLfp2/s1dGFmhi3xxhRUM8nVFvSa/nrSRtzEsdZCfHre+qiTeDBtr8TYHult/ZpUe8uFX/ZH/a/9NNJBbNDhMaXYCRVbyq5bDwWuY19ZrErvhCpuuEt4yX/s0b77A/6k/r/yopBY5vRtfoZQkUceXKCcwLEk+fCs+23mPGGD9n/OpuK2/DIczYYE8LlgfetRztbD8sKv7n+CnSFY3+HD/QYc/wDL/wCqi/Dv/wBXC/sz/ipf4Uh/qy/u/wCGh+FYf6svqT/DSoLANvgf7JhP2X86stkbeV5UVsJhQDfVYgDwJ0NV34Wg/qy+pP8ADS4Ntxqbrh0B7QFuPA20pgbVcbED/wCni/Zr9lPYPeYpNlWNVAsRluluI+bascN41/o2/WFR02sOkMnRnW2mYcvKjQKzV7/bdadSjEnKFtz0JB48+dYvZDATx8+I8yrD66sdoYnpVZiMrNlAW97AdpsPuahbKw5EsbHLYNc6jhz41lrZp6EjNQqX8TbsPqNClTKN3u/uO7/KTFlX8kekQeR/JHtrZx7FMYKQRIg4ZyOPmdTWY2z8JZS4ghuOAZjx1IvYWI4dtZ7H79Yh0JayFTqQFcMb65RICV0vz5cayeN+WbT6icu2kb/8FxXHT4lpCNejjJP7q3p+bbsMEdoRHHytIwifxyva9cXxW88sgIJmdTyZ2yj9EacqrPwtbQR2v31pGFephKVnUsdvdnzB8WgGmkayyePBVU/rVT4rZcmJyYiJ1MTpYNKyRMWSR1bqZzpfv51kdm4AzAkWGttePC/11LxyvMkODfKI8N0rIwNiemKyPnve/W0FrU1CDdLuVjzSxu0Mb2bLeCOJXeFixtaOQORlHzrcPSptcGXggizpHnldukkbJGuYMoMj2OUWAFVBwJWQWHVVkDG4NrsBU7bTlYVjudCU80kkB9w9lXFJLRGScpy5M2mC2XEiKrbTwAIUA5Z1YaC3NamLhsICC21cLpwsQeItyNcjWP3X9l6Qi3NT7KPodHvuaqs7Y23MHhwJUx0MzodIxmUkMQGsxYgaa8OVWG4m1FaNliVpCrzMzqpKjpJiyrm7Stm8CNa4vh9ldJlAlRerfrLJ2m+qIw5cyKvNm/G8IjDD40IrdZlRrZmAsLXuL8rm1NcYaOecpzdvZ1rbT4qVSseHbXnf/qH39Vcvf4Mtos5KxKFJJAzroDrbj9dMLvLtQpf45iM4JAW2YN2AFQSD4i3fUV989qK1nxc6sOIJsR5EXq7TM6ErE0cOPjYdZHiRh2ZHkVhp3itZs6CWbYix4fpL2cMFKBCRNG1j88ubmwW9wHFibVjtjYjO+JWVyTPG5LtxMubOGPebt66uNw9uNGHw3SRo5cPCZQDE0gI6j39G5CkNyZV76QxeysNJg8LiOlVVYpor5hKmfLqo4ZWaMcf6LSsRiCCc40DEm3ZrW63lwGOdM06Rwwpfq/i41zEk5eTkkn0S176caweIYEnL6PAX42HAnx40ANXpJNGooqYgAUoL31Iw0IbUirPC4JLi638zQBSZKGXvrZfEVAFo1A+iPfVhsfDxghmKC1+OUe+jYm6VnPctDLWo2rFG2Kcqi5NOAGUm2vDSqLaUaq/VFhbhU8t0UlqyJlHbRrYc6RQqhDq2vqakQSrcac6hVM2dDmdR30hot5rjjx09tqJJNeymMZigxPZn/dB09lJV100rM0RZdO3bR1B+MDs99Ci2Vo1eO3ekVM6p0h6t0R7sytc8B3j207jt2GVFvBKflMpAIYWy6WAOa+vZWOO38TpabLbhl6vDwFvXTb7fxRbN0zZr3uMoN9RyHeaODHzgjUYrd7oiPkmsWK9YhhcKdb30tcHyqi2ng448qiRDdQTlIOrWv4GqafFu5JdsxJJJIBNzx1tTGc9tUoNeSJTi+yL3D7SaJiIzbW9zY6m2g07qXiGlZukL2LcQCRbl80WNZ7Oe00Zlb8pvWaOHlE8y7OA1BMii/HU3HiLWNM7w48SyEKBlDM54aySBekIPYStwKqS57T66TVJNClKxefT2UlDSaFMkt8NiBwzKNLdZVPDvYG1LxGIBBAZfFQF9WWwqnVqUWqeJosjqi0wOMkRgwLNqCQWBvbx4VL2ntB5GzBFA/OKk39dUIeh0tHESaJmR+JI/WAtUSUEHWx9tJMlIppCbscaYkAEk20FyTYdg7KaJoUYWmSFQtUhF7qUE7qVjokYRDYWdB4/+KsYMPIT+NUfrj2harY4T2GpcaVLZooouU2S5HWxCHxZj76c+Iqv+tjPgb1SFOeUX7bD302725ewUnsvS8Fm6qpN2BqoxsAZic4Apt5W7TUdtaFGtkSZHdbG1we8UmnygoCMVdmdDS8a227W6Uk8fSdIsKnRcy5mYczlzCw5A8/bWSSHuq12dNLGQY7rz0uL+IB1pMaRsj8GRbX44upv+K/7lGPgzI/2wH/k/92p27288h0kWG/IlQCT2kXFaRdryEEiPDka26nnyc3pCbaMV/m3b+tr+y/7lCtj+G5P6OH9RxRUWhXI4ITSTTyJfTTXQX7ewd9NuhHGqGIoUKMCmITQFC1CgAzSTR0VAAoUKAoAMCgacAoiKB0N0KcC0eSgBq1HanctDLSsKGgKdRaMLT8aUWNIESXqxgwhtwqRs/BX5VsNmbAzLfLfmOBsLd9Q5G8YGTTAHsp74pbQj/wAVvY93G5L9ftFR59gsNMvspdyqMMcP3Uy8FayfZjDgB53+qoz4D8q3tqb2a+ybVmSeCozwVqp8PGNNL+IqLJhBqbadv86tMyljM38XNS8Ng7nhU0It+I9RNWOARQRcE+CsfqpSlSJjBWObO2KW+bWr2duuDxQ+oVJ3fjU2+TksdNUsO3y4VvNn4YWAsR9nl99KISsMkIxMxhN0I9Lxm3iQfZUjEbqQsgQCRALD5NjGdPyilix72ua2wjAFr/fxpMhUcSPV97cq0pHMznH+QcP5U37Vz76Ot306cj9/VQo0RZ5Sn9IeC+4UTn+EUKFBoNGgtChTEgjQoUKQBGk0KFMAUKFCgBxaVQoUhh0dChQAKSaFCgYcfH799TsNxoUKTLia3Yv39VdD3cHVX6P9kUVCsjd9iXisQ+nXbj2n86hC5Ktck8eOvM0KFEO45fKikx339dVGLQa6D73oqFD7nQvlKiZRmOlOyqMnD73oUKuHk55lSmh00qds5zcanh9tChUyIXzI3+wxoPAe6trgOXn7zQoU8fYjKWHI+dQp/RHiPeKFCtUczKhuJ8aKhQpmZ//Z'),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Martha Banks',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFFFFD428),
                                    size: 12,
                                  ),
                                  Text(
                                    'Gold Member',
                                    style: TextStyle(
                                      color: Color(0xFFFFD428),
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            // Image.asset('UIAssets/time.png',),
                            Icon(
                              Icons.access_time,
                              color: Colors.black,
                            ),
                            Text(
                              '10.2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Hours online',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'UIAssets/speed.png',
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.speed,
                              color: Colors.black,
                            ),
                            Text(
                              '30 KM',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Total Distance',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'UIAssets/blacklist.png',
                              color: Colors.black,
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Total Jobs',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/home.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/wallet.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'My Wallet',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/History.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'History',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/notification.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/gift.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Invite Friends',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/settings.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/logout.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
