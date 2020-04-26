
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
      'Care Finders Total Care ',
      '611 US-46 #200
Teterboro, NJ 07608',
      'Hasbrouck Heights',
      'NJ',
      '',
      'Yes',
      '40.8696471',
      '-74.0623163'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Finders Total Care '
        AND o.latitude = '40.8696471'
        AND o.longitude = '-74.0623163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Finders Total Care '
        AND o.latitude = '40.8696471'
        AND o.longitude = '-74.0623163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Finders Total Care '
        AND o.latitude = '40.8696471'
        AND o.longitude = '-74.0623163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Finders Total Care '
        AND o.latitude = '40.8696471'
        AND o.longitude = '-74.0623163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Finders Total Care '
        AND o.latitude = '40.8696471'
        AND o.longitude = '-74.0623163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Finders Total Care '
        AND o.latitude = '40.8696471'
        AND o.longitude = '-74.0623163'));

COMMIT;
