
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
      'New Life Medical Center',
      '14126 NW Dunbar Lane
Portland, OR 97231',
      'Portland ',
      'OR',
      'Residential address. Please leave in back porch as we have had some items stolen already ',
      'Yes',
      '45.598073',
      '-122.8231096'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Life Medical Center'
        AND o.latitude = '45.598073'
        AND o.longitude = '-122.8231096'));

COMMIT;
