
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
      'Athens Neighborhood Health Center ',
      '675 College Ave
Athens, GA 30601',
      'Athens',
      'GA',
      '675 College Avenue',
      'Yes',
      '33.9629371',
      '-83.3774782'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Athens Neighborhood Health Center '
        AND o.latitude = '33.9629371'
        AND o.longitude = '-83.3774782'));

COMMIT;
