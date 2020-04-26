
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
      'Lake Forest Place',
      '1101 Pembridge Dr
Lake Forest, IL 60045',
      'Lake Forest',
      'IL',
      'Attn:  Healthcare Administrator',
      'No',
      '42.2602452',
      '-87.867793'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Forest Place'
        AND o.latitude = '42.2602452'
        AND o.longitude = '-87.867793'));

COMMIT;
