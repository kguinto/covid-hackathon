
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
      'Sutter Pacific Medical Foundation - Respiratory Clinic',
      '3801 Sacramento Street
San Francisco, CA 94118',
      'San Francisco',
      'CA',
      'Curbside on Mon-Fri 9am-6pm, for mailing: ATTN: Respiratory Clinic 3rd floor',
      'No',
      '37.7871096',
      '-122.455564'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hair nets',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter Pacific Medical Foundation - Respiratory Clinic'
        AND o.latitude = '37.7871096'
        AND o.longitude = '-122.455564'));

COMMIT;
