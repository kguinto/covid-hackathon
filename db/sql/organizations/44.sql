
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Partners Healthcare @ Brigham and Women''s Hospital',
      '75 Francis St
Boston, MA 02115',
      'Boston',
      'MA',
      'Email Kerianne at kwilson36@partners.org. Looking for COVID-19 test kits and instruments. Details at http://phslyris2.partners.org/read/archive?id=148331&mid=10261087&e=MCFISHER1%40PARTNERS%2eORG&x=09380e2e',
      'Unknown',
      '42.3362036',
      '-71.1067408'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Kits: QIAamp® Viral RNA Mini Kit QIAamp® MinElute Virus Spin Kit or RNeasy® Mini Kit (QIAGEN) EZ1 DSP Virus Kit (QIAGEN) Roche MagNA Pure Compact RNA Isolation Kit Roche MagNA Pure Compact Nucleic Acid Isolation Kit Roche MagNA Pure 96 DNA and Viral NA Small Volume Kit Instruments: Roche Magna Pure Roche 480Z ABI7500DX Qiagen EZ1 Advanced XL QIAcube/QIAcube Connect',
    (SELECT id FROM organizations o
      WHERE o.name = 'Partners Healthcare @ Brigham and Women''s Hospital'
        AND o.latitude = '42.3362036'
        AND o.longitude = '-71.1067408'));

COMMIT;
