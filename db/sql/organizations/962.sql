
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
      'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM',
      '16 N Bryn Mawr Ave, #386
Bryn Mawr, PA 19010',
      'Bryn Mawr',
      'PA',
      'Residential. Must be mailed or drop off w pre-arranged time. Thank you. Closed packages, even if very expired dates, preferred to open, but we''ll take and use with gratitude whatever we can get. ',
      'Yes',
      '40.0218748',
      '-75.3175763'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('2 pulse oximeters (medical grade) needed',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amy L Davis, DO, MS, FACP, FAAHPM, FASAM'
        AND o.latitude = '40.0218748'
        AND o.longitude = '-75.3175763'));

COMMIT;
