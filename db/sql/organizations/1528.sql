
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
      'West Hills Health & Rehab',
      '5701 SW Multnomah Blvd
Portland, OR 97219',
      'Portland',
      'OR',
      'lease at front door',
      'Yes',
      '45.4679405',
      '-122.7365649'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Health & Rehab'
        AND o.latitude = '45.4679405'
        AND o.longitude = '-122.7365649'));

COMMIT;
