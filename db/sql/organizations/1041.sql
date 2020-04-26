
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
      'Legacy Good Samaritan Hospital',
      '1015 NW 22nd Ave
Portland, OR 97210',
      'Portland',
      'OR',
      'Large bin at front entrance of hospital. Attn: inpatient pharmacy',
      'Yes',
      '45.5300915',
      '-122.6975884'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Good Samaritan Hospital'
        AND o.latitude = '45.5300915'
        AND o.longitude = '-122.6975884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Good Samaritan Hospital'
        AND o.latitude = '45.5300915'
        AND o.longitude = '-122.6975884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Good Samaritan Hospital'
        AND o.latitude = '45.5300915'
        AND o.longitude = '-122.6975884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Good Samaritan Hospital'
        AND o.latitude = '45.5300915'
        AND o.longitude = '-122.6975884'));

COMMIT;
