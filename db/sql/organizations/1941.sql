
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
      'Froedtert Hospital',
      '10000 W Bluemound Rd
Wauwatosa, WI 53226',
      'Wauwatosa',
      'WI',
      'Visit the donation box between the hours of 8 a.m. and 4 p.m., Monday through Friday at:
Menomonee Falls location
Integrated Service Center
N86 W12999 Nightingale Way
Menomonee Falls, WI 53051

Wauwatosa location
10000 W. Bluemound Rd.
Wauwatosa, WI 53226

If you know of a manufacturer looking to support health care providers, or you''d like us to consider other donations, please e-mail E-mail purchasingassistant@froedtert.com',
      'Unsure',
      '43.0359991',
      '-88.0372916'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Froedtert Hospital'
        AND o.latitude = '43.0359991'
        AND o.longitude = '-88.0372916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Froedtert Hospital'
        AND o.latitude = '43.0359991'
        AND o.longitude = '-88.0372916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Froedtert Hospital'
        AND o.latitude = '43.0359991'
        AND o.longitude = '-88.0372916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Froedtert Hospital'
        AND o.latitude = '43.0359991'
        AND o.longitude = '-88.0372916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Froedtert Hospital'
        AND o.latitude = '43.0359991'
        AND o.longitude = '-88.0372916'));

COMMIT;
