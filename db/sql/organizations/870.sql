
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
      'Kaiser Permanente - Oakland ',
      '280 W MacArthur Blvd
Oakland, CA 94611',
      'Oakland',
      'CA',
      'Command Center on 1st floor ',
      'No',
      '37.8244471',
      '-122.2576787'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland '
        AND o.latitude = '37.8244471'
        AND o.longitude = '-122.2576787'));

COMMIT;
