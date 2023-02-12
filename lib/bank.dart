import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bank extends Equatable {
  final String koreanName;
  final String shortName;
  final String englishName;
  final String code;
  final Widget logo;
  const Bank({
    required this.koreanName,
    required this.englishName,
    required this.shortName,
    required this.code,
    required this.logo,
  });

  @override
  List<Object> get props {
    return [
      koreanName,
      shortName,
      englishName,
      code,
      logo,
    ];
  }
}

// * 은행 코드  한글  영문
//  * 경남은행 39  경남  KYONGNAMBANK
//  * 광주은행 34  광주  GWANGJUBANK
//  * 교보증권 S8  교보증권  KYOBO_SECURITIES
//  * 단위농협 12  단위농협  LOCALNONGHYEOP
//  * 대신증권 SE  대신증권  DAISHIN_SECURITIES
//  * 메리츠증권  SK  메리츠증권 MERITZ_SECURITIES
//  * 미래에셋증권 S5  미래에셋증권  MIRAE_ASSET_SECURITIES
//  * 부국증권 SM  부국  BOOKOOK_SECURITIES
//  * 부산은행 32  부산  BUSANBANK
//  * 삼성증권 S3  삼성증권  SAMSUNG_SECURITIES
//  * 새마을금고  45  새마을 SAEMAUL
//  * 산림조합 64  산림  SANLIM
//  * 신영증권 SN  신영증권  SHINYOUNG_SECURITIES
//  * 신한금융투자 S2  신한금융투자  SHINHAN_INVESTMENT
//  * 신한은행 88  신한  SHINHAN
//  * 신협 48  신협  SHINHYEOP
//  * 씨티은행 27  씨티  CITI
//  * 우리은행 20  우리  WOORI
//  * 우체국예금보험  71  우체국 POST
//  * 유안타증권  S0  유안타증권 YUANTA_SECURITES
//  * 유진투자증권 SJ  유진투자증권  EUGENE_INVESTMENT_AND_SECURITIES
//  * 저축은행중앙회  50  저축  SAVINGBANK
//  * 전북은행 37  전북  JEONBUKBANK
//  * 제주은행 35  제주  JEJUBANK
//  * 카카오뱅크  90  카카오 KAKAOBANK
//  * 카카오페이증권  SQ  카카오페이증권 KAKAOPAY_SECURITIES
//  * 케이뱅크 89  케이  KBANK
//  * 토스머니 - 토스머니  TOSS_MONEY
//  * 토스뱅크 92  토스  TOSSBANK
//  * 토스증권 ST  토스증권  TOSS_SECURITIES
//  * 펀드온라인코리아 SR  펀드온라인코리아  KOREA_FOSS_SECURITIES
//  * 하나금융투자 SH  하나금융투자  HANA_INVESTMENT_AND_SECURITIES
//  * 하나은행 81  하나  HANA
//  * 하이투자증권 S9  하이투자증권  HI_INVESTMENT_AND_SECURITIES
//  * 한국투자증권 S6  한국투자증권  KOREA_INVESTMENT_AND_SECURITIES
//  * 한화투자증권 SG  한화투자증권  HANHWA_INVESTMENT_AND_SECURITIES
//  * 현대차증권  SA  현대차증권 HYUNDAI_MOTOR_SECURITIES
//  * 홍콩상하이은행  54  - HSBC
//  * DB금융투자 SI  DB금융투자  DB_INVESTMENT_AND_SECURITIES
//  * DGB대구은행  31  대구  DAEGUBANK
//  * IBK기업은행  03  기업  IBK
//  * KB국민은행 06  국민  KOOKMIN
//  * KB증권 S4  KB증권  KB_SECURITIES
//  * KDB산업은행  02  산업  KDBBANK
//  * KTB투자증권  SP  KTB투자증권 DAOL_INVESTMENT_AND_SECURITIES
//  * LIG투자증권  SO  LIG투자 LIG_INVESTMENT_AND_SECURITIES
//  * NH농협은행 11  농협  NONGHYEOP
//  * NH투자증권 SL  NH투자증권  NH_INVESTMENT_AND_SECURITIES
//  * SC제일은행 23  SC제일  SC
//  * Sh수협은행 07  수협  SUHYEOP
//  * SK증권 SD  SK증권  SK_SECURITIES

final bankProvider = [
  Bank(
      koreanName: '경남은행',
      englishName: 'KYONGNAMBANK',
      shortName: '경남',
      code: '39',
      logo: SvgPicture.asset(
        'assets/images/bank/bnk.svg',
        package: 'korea_banks',
        width: 100,
      )),
  Bank(
      koreanName: '광주은행',
      englishName: 'GWANGJUBANK',
      shortName: '광주',
      code: '34',
      logo: SvgPicture.asset(
        'assets/images/bank/jb.svg',
        package: 'korea_banks',
        width: 100,
      )),
  Bank(
      koreanName: '교보증권',
      englishName: 'KYOBO_SECURITIES',
      shortName: '교보증권',
      code: 'S8',
      logo: SvgPicture.asset(
        'assets/images/bank/kyobo.svg',
        package: 'korea_banks',
        width: 100,
      )),
  Bank(
      koreanName: '단위농협',
      englishName: 'LOCALNONGHYEOP',
      shortName: '단위농협',
      code: '12',
      logo: SvgPicture.asset(
        'assets/images/bank/nonghyeop.svg',
        package: 'korea_banks',
        width: 100,
      )),
  Bank(
      koreanName: '대신증권',
      englishName: 'DAESHIN_SECURITIES',
      shortName: '대신증권',
      code: 'SE',
      logo: SvgPicture.asset(
        'assets/images/bank/daeshin.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '메리츠증권',
      englishName: 'MERITZ_SECURITIES',
      shortName: '메리츠증권',
      code: 'SK',
      logo: SvgPicture.asset(
        'assets/images/bank/meritz.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '미래에셋증권',
      englishName: 'MIRAE_ASSET_SECURITIES',
      shortName: '미래에셋증권',
      code: 'S5',
      logo: SvgPicture.asset(
        'assets/images/bank/mirae.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '부국증권',
      englishName: 'BOOKOOK_SECURITIES',
      shortName: '부국',
      code: 'SM',
      logo: Image.asset(
        'assets/images/bank/bukuk.png',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '부산은행',
      englishName: 'BUSANBANK',
      shortName: '부산',
      code: '32',
      logo: SvgPicture.asset(
        'assets/images/bank/bnk.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '삼성증권',
      englishName: 'SAMSUNG_SECURITIES',
      shortName: '삼성증권',
      code: 'S3',
      logo: SvgPicture.asset(
        'assets/images/bank/samsung.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '새마을금고',
      englishName: 'SAEMAEUL',
      shortName: '새마을',
      code: '45',
      logo: SvgPicture.asset(
        'assets/images/bank/saemaeul.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '산림조합',
      englishName: 'SANLIM',
      shortName: '산림',
      code: '64',
      logo: SvgPicture.asset(
        'assets/images/bank/sanlim.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '신영증권',
      englishName: 'SHINYOUNG_SECURITIES',
      shortName: '신영증권',
      code: 'SN',
      logo: SvgPicture.asset(
        'assets/images/bank/shinyoung.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '신한금융투자',
      englishName: 'SHINHAN_INVESTMENT',
      shortName: '신한금융투자',
      code: 'S2',
      logo: SvgPicture.asset(
        'assets/images/bank/shinhan.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '신한은행',
      englishName: 'SHINHAN',
      shortName: '신한',
      code: '88',
      logo: SvgPicture.asset(
        'assets/images/bank/shinhan.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '신협',
      englishName: 'SHINHYEOP',
      shortName: '신협',
      code: '48',
      logo: SvgPicture.asset(
        'assets/images/bank/shinhyeop.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '씨티은행',
      englishName: 'CITI',
      shortName: '씨티',
      code: '27',
      logo: SvgPicture.asset(
        'assets/images/bank/citi.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '우리은행',
      englishName: 'WOORI',
      shortName: '우리',
      code: '20',
      logo: SvgPicture.asset(
        'assets/images/bank/woori.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '우체국예금보험',
      englishName: 'POST',
      shortName: '우체국',
      code: '71',
      logo: SvgPicture.asset(
        'assets/images/bank/postoffice.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '유안타증권',
      englishName: 'YUANTA_SECURITIES',
      shortName: '유안타증권',
      code: 'S0',
      logo: SvgPicture.asset(
        'assets/images/bank/yuanta.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '유진투자증권',
      englishName: 'EUGENE_INVESTMENT_AND_SECURITIES',
      shortName: '유진투자증권',
      code: 'SJ',
      logo: SvgPicture.asset(
        'assets/images/bank/yujin.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '저축은행중앙회',
      englishName: 'SAVINGBANK',
      shortName: '저축',
      code: '50',
      logo: Image.asset(
        'assets/images/bank/savingbank.jpg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '전북은행',
      englishName: 'JEONBUKBANK',
      shortName: '전북',
      code: '37',
      logo: SvgPicture.asset(
        'assets/images/bank/jb.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '제주은행',
      englishName: 'JEJUBANK',
      shortName: '제주',
      code: '35',
      logo: SvgPicture.asset(
        'assets/images/bank/shinhan.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '카카오뱅크',
      englishName: 'KAKAOBANK',
      shortName: '카카오',
      code: '90',
      logo: SvgPicture.asset(
        'assets/images/bank/kakaobank.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '카카오페이증권',
      englishName: 'KAKAOPAY_SECURITIES',
      shortName: '카카오페이증권',
      code: 'SQ',
      logo: SvgPicture.asset(
        'assets/images/bank/kakaopay.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '케이뱅크',
      englishName: 'KBANK',
      shortName: '케이',
      code: '89',
      logo: SvgPicture.asset(
        'assets/images/bank/kbank.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '토스머니',
      englishName: 'TOSS_MONEY',
      shortName: '토스머니',
      code: '',
      logo: SvgPicture.asset('assets/images/bank/toss.svg',
          package: 'korea_banks',width: 100,)),
  Bank(
      koreanName: '토스뱅크',
      englishName: 'TOSSBANK',
      shortName: '토스',
      code: '92',
      logo: SvgPicture.asset(
        'assets/images/bank/toss.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '토스증권',
      englishName: 'TOSS_SECURITIES',
      shortName: '토스증권',
      code: 'ST',
      logo: SvgPicture.asset(
        'assets/images/bank/toss.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '펀드온라인코리아',
      englishName: 'KOREA_FOSS_SECURITIES',
      shortName: '펀드온라인코리아',
      code: 'SR',
      logo: Image.asset(
        'assets/images/bank/fundonline.png',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '하나금융투자',
      englishName: 'HANA_INVESTMENT_AND_SECURITIES',
      shortName: '하나금융투자',
      code: 'SH',
      logo: SvgPicture.asset(
        'assets/images/bank/hana.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '하나은행',
      englishName: 'HANA',
      shortName: '하나',
      code: '81',
      logo: SvgPicture.asset(
        'assets/images/bank/hana.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '하이투자증권',
      englishName: 'HI_INVESTMENT_AND_SECURITIES',
      shortName: '하이투자증권',
      code: 'S9',
      logo: SvgPicture.asset('assets/images/bank/hi.svg',
          package: 'korea_banks',width: 100,)),
  Bank(
      koreanName: '한국투자증권',
      englishName: 'KOREA_INVESTMENT_AND_SECURITIES',
      shortName: '한국투자증권',
      code: 'S6',
      logo: SvgPicture.asset(
        'assets/images/bank/korea_investment.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '한화투자증권',
      englishName: 'HANHWA_INVESTMENT_AND_SECURITIES',
      shortName: '한화투자증권',
      code: 'SG',
      logo: SvgPicture.asset(
        'assets/images/bank/hanhwa.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: '현대차증권',
      englishName: 'HYUNDAI_MOTOR_SECURITIES',
      shortName: '현대차증권',
      code: 'SA',
      logo: SvgPicture.asset('assets/images/bank/hyundai_motors.svg',
          package: 'korea_banks',width: 100,)),
  Bank(
      koreanName: '홍콩상하이은행',
      englishName: 'HSBC',
      shortName: '',
      code: '54',
      logo: SvgPicture.asset(
        'assets/images/bank/hsbc.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'DB금융투자',
      englishName: 'DB_INVESTMENT_AND_SECURITIES',
      shortName: 'DB금융투자',
      code: 'SI',
      logo: SvgPicture.asset(
        'assets/images/bank/db.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'DGB대구은행',
      englishName: 'DAEGUBANK',
      shortName: '대구',
      code: '31',
      logo: SvgPicture.asset(
        'assets/images/bank/dgb.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'IBK기업은행',
      englishName: 'IBK',
      shortName: '기업',
      code: '03',
      logo: SvgPicture.asset(
        'assets/images/bank/ibk.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'KB국민은행',
      englishName: 'KOOKMIN',
      shortName: '국민',
      code: '06',
      logo: SvgPicture.asset(
        'assets/images/bank/kb.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'KB증권',
      englishName: 'KB_SECURITIES',
      shortName: 'KB증권',
      code: 'S4',
      logo: SvgPicture.asset('assets/images/bank/kb.svg',
          package: 'korea_banks',width: 100,)),
  Bank(
      koreanName: 'KDB산업은행',
      englishName: 'KDBBANK',
      shortName: '산업',
      code: '02',
      logo: SvgPicture.asset(
        'assets/images/bank/kdb.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'KTB투자증권',
      englishName: 'DAOL_INVESTMENT_AND_SECURITIES',
      shortName: 'KTB투자증권',
      code: 'SP',
      logo: Image.asset(
        'assets/images/bank/daol.png',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'LIG투자증권',
      englishName: 'LIG_INVESTMENT_AND_SECURITIES',
      shortName: 'LIG투자',
      code: 'SO',
      logo: SvgPicture.asset(
        'assets/images/bank/lig.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'NH농협은행',
      englishName: 'NONGHYEOP',
      shortName: '농협',
      code: '11',
      logo: SvgPicture.asset(
        'assets/images/bank/nonghyeop.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'NH투자증권',
      englishName: 'NH_INVESTMENT_AND_SECURITIES',
      shortName: 'NH투자증권',
      code: 'SL',
      logo: SvgPicture.asset('assets/images/bank/nonghyeop.svg',
          package: 'korea_banks',width: 100,)),
  Bank(
      koreanName: 'SC제일은행',
      englishName: 'SC',
      shortName: 'SC제일',
      code: '23',
      logo: SvgPicture.asset(
        'assets/images/bank/sc.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'SH수협은행',
      englishName: 'SUHYEOP',
      shortName: '수협',
      code: '07',
      logo: SvgPicture.asset(
        'assets/images/bank/sh.svg',
        package: 'korea_banks',width: 100,
      )),
  Bank(
      koreanName: 'SK증권',
      englishName: 'SK_SECURITIES',
      shortName: 'SK증권',
      code: 'SD',
      logo: SvgPicture.asset(
        'assets/images/bank/sk.svg',
        package: 'korea_banks',width: 100,
      )),
];
