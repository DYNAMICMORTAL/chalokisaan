import 'package:flutter/material.dart';
import 'package:chalokisaan/Gov_Schemes/scheme_detail_page.dart';
import '../utils/style.dart';

class GovSchemesList extends StatefulWidget {
  @override
  _GovSchemesListState createState() => _GovSchemesListState();
}

class _GovSchemesListState extends State<GovSchemesList> {
  String? selectedState; // Selected state
  List<SchemeInfo> schemes = [
    SchemeInfo(
      state: "Andhra Pradesh",
      title: "Agriculture Infrastructure Fund",
      description:
          "The Union Cabinet in July 2020 has approved a new pan India Central Sector Scheme called Agriculture Infrastructure Fund (National Agriculture Infra Financing Facility). The scheme shall provide a medium - long term debt financing facility for investment in viable projects for post-harvest management Infrastructure and community farming assets through interest subvention and financial support.",
      schemeDuration:
          "Scheme duration\nThe duration of the Scheme shall be from FY2020 to FY2032 (10 years).",
      intendedBeneficiaries:
          "Intended beneficiaries\nAgricultural Produce Market Committee, Agri-Entrepreneur, Central sponsored Public-Private Partnership Project, Farmer, Farmer Producers Organization, Federation of Farmer Produce Organisations, Joint Liability Groups, Local Body sponsored Public-Private Partnership Project, Marketing Cooperative Society, Multipurpose Cooperative Society, National Federations of Cooperatives, Primary Agricultural Credit Society, Self Help Group, Federations of Self Help Groups, Start-Up, State Agencies, State Federations of Cooperatives, State sponsored Public-Private Partnership Project",
      benefits:
          "Benefits\nAll loans under this financing facility will have interest subvention of 3% per annum up to a limit of Rs. 2 crore. This subvention will be available for a maximum period of seven years. Further, credit guarantee coverage will be available for eligible borrowers from this financing facility under Credit Guarantee Fund Trust for Micro and Small Enterprises (CGTMSE) scheme for a loan up to Rs. 2 crore. The fee for this coverage will be paid by the Government. In case of FPOs, the credit guarantee may be availed from the facility created under FPO promotion scheme of Department of Agriculture, Cooperation & Farmers Welfare (DACFW). Moratorium for repayment under this financing facility may vary subject to a minimum of 6 months and a maximum of 2 years.",
      howToApply: "How to apply\nTo apply online, click here.",
      requiredDocuments:
          "Checklist of Documents\n\n- Bank’s loan application form / Customer Request Letter for AIF Loan duly filled and signed\n- Passport size photographs of the promoter/partners/director\n- Identity proof – Voter ID card/PAN card/Aadhaar card/Driving license\n- Address Proof :\n  Residence: Voter ID card/Passport/Aadhaar card/Driving license/Electricity Bill/Latest property Tax Bill\n  Business Office/Registered Office: Electricity Bill/Latest Property Tax Receipt/Certificate of Incorporation in case of Companies/Certificate of Registration in case of partnership Firms\n- Proof of Registration\n  In case of Company : Article of Association\n  In case of Partnership : Certificate of Registration of Firm with Registrar of Firm\n  In case of MSMEs : Certificate of Registration with District Industries Centre (DIC)/Udyog Aadhar Copy\n- Income Tax Return for the last three years, If available.\n- Audited Balance Sheet of last 3 Years, If available.\n- GST Certificate, if applicable.\n- Land ownership records – title deed/lease deed. If applicable, then Permission to mortgage the Immovable Property from the Lessor in case the Property is Leasehold (for primary security)\n- ROC Search Report of the Company\n- KYC documents of the promoter/firm/company\n- Copy of Bank Statement for the last one year (If available)\n- Repayment track record of existing loans (Loan Statement)\n- Net Worth Statements of the promoter\n- Detailed Project Report\n- As applicable - Local authority permissions, Layout plans/estimates, Building sanction",
    ),
    SchemeInfo(
      state: "Maharashtra",
      title: "Pradhan Mantri Kisan Maan Dhan Yojana",
      description:
          "A contributory pension scheme by the Ministry of Agriculture and Farmers Welfare for Individual Farmers. Provides an assured monthly pension of Rs. 3000/- to all the Small and Marginal farmers after the age of 60 years.",
      schemeDuration: "Scheme duration\nN/A",
      intendedBeneficiaries:
          "Intended beneficiaries\nSmall and Marginal Farmers\nEntry Age between 18 to 40 years\nCultivable land up to 2 hectares as per land records of the concerned State/UT",
      benefits:
          "Benefits\nMinimum assured pension of Rs. 3000/- per month after attaining the age of 60 years. Convertible to family pension wherein spouse shall be entitled to receive 50% of the amount. If the applicant dies before the age of 60, the spouse will be entitled to continue the scheme and shall be entitled to receive 50% of the amount. Once the applicant attains the age of 60, he/she can claim the pension amount. Every month, a fixed pension amount gets deposited in the pension account of the respective individual. In case an eligible beneficiary exits this Scheme within a period of less than ten years from the date of joining the Scheme by him, then the share of contribution by him only will be returned to him with savings bank rate of interest payable thereon. If an eligible beneficiary exits after completion of a period of ten years or more from the date of joining the Scheme by him but before his age of sixty years, then his share of contribution only shall be returned to him along with accumulated interest thereon as actually earned by the Pension Fund or the interest at the savings bank interest rate thereon, whichever is higher. If an eligible beneficiary has given regular contributions and died due to any cause, his spouse shall be entitled to continue with the Scheme subsequently by payment of regular contribution as applicable or exit by receiving the share of contribution paid by such beneficiary along with accumulated interest, as actually earned thereon by the Pension Fund or at the savings bank interest rate thereon, whichever is higher. After the death of the beneficiary and his or her spouse, the corpus shall be credited back to the fund.",
      howToApply:
          "How to apply\nOnline - Via CSCs\nOnline\nFollowing are the prerequisites for the enrollment process:\n- Aadhaar Card\n- Savings Bank Account Number along with IFSC Code ( Bank Passbook or Cheque Leave/book or copy of bank statement as evidence of bank account )\n- Initial contribution amount in cash will be made to the Village Level Entrepreneur (VLE).\n- The VLE will key-in the Aadhaar number, Name of beneficiary and Date of birth as printed on aadhaar card for authentication..\n- The VLE will complete the online registration by filling up the details like Bank Account details, Mobile Number, Email Address, Spouse (if any) and Nominee details will be captured.\n- System will auto calculate monthly contribution payable according to age of the Beneficiary.\n- Beneficiary will pay the 1st subscription amount in cash to the VLE.\n- Enrollment cum Auto Debit mandate form will be printed and will be further signed by the beneficiary. VLE will scan the same and upload it into the system.\n- A unique Kisan Pension Account Number (KPAN) will be generated and Kisan Card will be printed.",
      requiredDocuments:
          "Documents Required\nIndicative Document\n- Aadhaar Card\n- Savings Bank Account / PM-Kisan Account",
    ),
    SchemeInfo(
      state: "Goa",
      title: "Farmer Suicide Ex-Gratia (Andhra Pradesh)",
      description:
          "\"Farmer Suicide Ex-Gratia\" is a Financial Assistance Scheme by the Agriculture & Cooperation Dept. of the Govt. of Andhra Pradesh. The scheme provides financial assistance of ₹ 7,00,000 to the family members of the deceased farmers/tenant farmers, who commit suicide due to agrarian reasons as a rehabilitation package to support the families of the farmers. The reasons for committing such suicides may be the Failure of Bore wells, Raising of Commercial crops with the high cost of cultivation, Non-Remunerative Prices, etc.",
      schemeDuration: "Scheme duration\nN/A",
      intendedBeneficiaries:
          "Eligibility\n- The deceased farmer should have been a resident/domicile of the state of Andhra Pradesh.\n- The cause of death of the farmer should be suicide.\n- The reason for the suicide should be an agrarian reason, such as Failure of Bore wells, Raising of Commercial crops with a high cost of cultivation, Non-Remunerative Prices, Oral tenancy, and ineligibility to avail of Bank Loans, Private lending with higher interest rates, Adverse seasonal conditions, Heavy expenditure incurred towards Children education, ill health, and marriages.\n- The term “farmer” shall include every person who derives substantial livelihood from farming, not limited to those with title to land, but including tenant farmers and women farmers.\n- The beneficiary of the financial assistance should be a family member of the deceased farmer.",
      benefits:
          "Benefits\n- Financial Assistance: ₹7,00,000 for families of deceased farmers or tenant farmers who committed suicide due to agrarian reasons.\n- Dedicated Support: A designated contact person at the Collector's office to assist victim families.\n- Priority Access: Families are given priority access to other government schemes during the rehabilitation process.\n- Grievance Day: A special Grievance Day is held monthly at the Collectorate to address various farmer-related issues, including distress, government schemes, and land matters.",
      howToApply:
          "Application Process\n- **Step 1:** District Collector's Visit: The District Collector, along with Agriculture and Revenue department officials, visits the incident location to provide moral support and initiate necessary actions.\n- **Step 2:** Proposal Submission: The Collector and District Magistrate submit a proposal with recommendations for financial assistance, along with the required documents.\n- **Step 3:** Examination and Release: The Commissioner and Director of Agriculture thoroughly examine the report and release financial assistance to the legal heirs directly or to the District Collector for reimbursement.\n- **Step 4:** Assistance Disbursement: Financial assistance is released to the family members of the deceased farmer for rehabilitation.",
      requiredDocuments:
          "Required Documents\n- Residential/Domicile Certificate\n- Passport Size Photo\n- Ex-Gratia Proposals with District Collector's Recommendations\n- Mandal and Divisional Level Three-Member Committee Report\n- Aadhar Card\n- Ration Card\n- Death Panchanama\n- Post Mortem Report\n- Death Certificate\n- FIR Copy\n- Xerox Copies of the Promissory Notes\n- Details of Legal Heirs along with Bank Details certified by the Tahsildar for Direct Benefit Transfer.\n- For tenant farmers: Documentary evidence of the lease, such as Revenue Records or Crop Cultivators Rights Card (CCRC).",
    ),
    SchemeInfo(
      state: "All States",
  title: "Pradhan Mantri Kisan Urja Suraksha Evam Utthan Mahabhiyan Scheme For Farmers",
  description: "Pradhan Mantri Kisan Urja Surakshaevam Utthaan Mahabhiyan Yojana (PM-KUSUM Scheme) was launched in March 2019 by the Ministry of New and Renewable Energy (MNRE), to subsidize farmers to install solar irrigation pumps for cultivation. Each farmer will receive a 60% subsidy to set up tube wells and pump sets. They will also get 30% of the total cost as a loan from the Government.",
  schemeDuration: "Scheme duration\nN/A",
  intendedBeneficiaries: "Intended beneficiaries\nAn individual farmer, A group of farmers, FPO or Farmer producer organization, Panchayat, Co-operatives, Water User Associations",
  benefits: "Benefits\nThis scheme provides the following benefits:\n- The Indian Government initiated the construction of solar plants that can generate an aggregate of 28,250 MW of power.\n- The Government will subsidize 60% and provide a loan of 30% of the total cost. This leads our farmers to bear only 10% of the total cost to install solar plants and solar pumps.\n- As per the KUSUM Scheme details, our Government will provide subsidies to install state-of-the-art solar pumps. They improve irrigation as they hold 720MV of capacity.\n- This scheme offers our farmers an opportunity of selling the extra power generated by the plants directly to our Government. This ensures the scope of an increase in the income of our farmers.\n- A landholder in a rural area can get a stable source of income by utilizing barren and uncultivated land for solar plant implementation for 25 years.\n- The solar plants will be set up above a minimum height in cultivable lands. This way, our farmers will be able to continue with cultivation after installing the plants.\n- KUSUM Scheme ensures increasing use of renewable energy helps to mitigate pollution in farms and opens a gateway to eco-friendly cultivation",
  howToApply: "How to apply\nOnline\nInterested individuals can apply for KUSUM Scheme by following the procedures stated below -\n\nStep 1: Go to the official portal and click on the registration section.\nStep 2: Fill in the registration form that appears on your screen with all the required details.\nStep 3: Check the box of declaration and click on “submit”.\nStep 4: After registering, click on “log in” for Solar Agricultural Pumpset Subsidy Scheme 2021.\nStep 5: Provide all necessary information accurately in the online application form, attach all the supporting documents, and submit.\n\nNote: After a successful online application for KUSUM Scheme, farmers must deposit 10% of the total cost to set up a solar pump to the supplier sent by the department. The solar pump set will be empowered after the subsidy amount gets sanctioned, which generally takes 90 to 10 days.",
  requiredDocuments: "Documents Required\nAadhar card\nA land document including KhasraKhatauni\nA bank account passbook\nA declaration form\nMobile number\nPassport size photo",
),
  ];

  List<SchemeInfo> filteredSchemes = [];

  @override
  void initState() {
    super.initState();
    filterSchemesByState();
  }

  void filterSchemesByState() {
    filteredSchemes = schemes
        .where(
            (scheme) => selectedState == null || scheme.state == selectedState || scheme.state == "All States")
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Government Schemes", style: Styles.headlineStyle2.copyWith(color: Colors.white),),
        backgroundColor: Color(0xFFF14453D),iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8, // Set to 80% of screen width
            alignment: Alignment.center, // Center the contents horizontally
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Select your region",
                    style: Styles.headlineStyle2,
                  ),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedState = newValue;
                      filterSchemesByState();
                    });
                  },
                  value: selectedState,
                  items: [
                    DropdownMenuItem<String>(
                      value: null, // Represents "All States"
                      child: Text("--Select your state--"),
                    ),
                    ...schemes
                        .map((scheme) => scheme.state)
                        .toSet()
                        .map<DropdownMenuItem<String>>((String state) {
                      return DropdownMenuItem<String>(
                        value: state,
                        child: Text(state),
                      );
                    }).toList(),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      filterSchemesByState();
                    });
                  },
                  child: Text(
                    "Apply",
                    style: Styles.textStyle.copyWith(color: Colors.deepPurpleAccent),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredSchemes.length,
              itemBuilder: (context, index) {
                return SchemeButton(schemeInfo: filteredSchemes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SchemeInfo {
  final String title;
  final String description;
  final String schemeDuration;
  final String intendedBeneficiaries;
  final String benefits;
  final String howToApply;
  final String requiredDocuments;
  final String state;

  SchemeInfo({
    required this.title,
    required this.description,
    required this.schemeDuration,
    required this.intendedBeneficiaries,
    required this.benefits,
    required this.howToApply,
    required this.requiredDocuments,
    required this.state,
  });
}

class SchemeButton extends StatelessWidget {
  final SchemeInfo schemeInfo;

  SchemeButton({required this.schemeInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SchemeDetailPage(
                state: schemeInfo.state, // Pass the state to SchemeDetailPage
                title: schemeInfo.title,
                description: schemeInfo.description,
                schemeDuration: schemeInfo.schemeDuration,
                intendedBeneficiaries: schemeInfo.intendedBeneficiaries,
                benefits: schemeInfo.benefits,
                howToApply: schemeInfo.howToApply,
                requiredDocuments: schemeInfo.requiredDocuments,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFF607D3B),
        ),
        child: Text(
          schemeInfo.title,
          style: Styles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
