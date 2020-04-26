
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
      'Saint Luke''s South',
      '12300 Metcalf Ave
Overland Park, KS 66213',
      'Overland Park',
      'KS',
      'SLS RNs',
      'Yes',
      '38.9037578',
      '-94.6699882'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Luke''s South'
        AND o.latitude = '38.9037578'
        AND o.longitude = '-94.6699882'));

COMMIT;
