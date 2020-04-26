
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
      'United Community Health Center',
      '715 W Milwaukee Ave
Storm Lake, IA 50588',
      'Storm Lake',
      'IA',
      'Call 712 213 0109 and let us know you have PPE to donate and we''ll meet you in the parking lot. Thank you!',
      'Yes',
      '42.6479037',
      '-95.209827'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Community Health Center'
        AND o.latitude = '42.6479037'
        AND o.longitude = '-95.209827'));

COMMIT;
