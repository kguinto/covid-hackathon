
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
      'Health Transport Partners Ambulance',
      '150 Farm Ln
York, PA 17402',
      'York',
      'PA',
      'https://healthtransport.net/contact-us/',
      'Yes',
      '39.9116628',
      '-76.6798467'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Transport Partners Ambulance'
        AND o.latitude = '39.9116628'
        AND o.longitude = '-76.6798467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Transport Partners Ambulance'
        AND o.latitude = '39.9116628'
        AND o.longitude = '-76.6798467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Transport Partners Ambulance'
        AND o.latitude = '39.9116628'
        AND o.longitude = '-76.6798467'));

COMMIT;
