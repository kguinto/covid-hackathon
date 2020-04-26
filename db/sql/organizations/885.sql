
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
      'Kaiser Permanente - Redwood City',
      '1100 Veterans Blvd
Redwood City, CA 94063',
      'Redwood City',
      'CA',
      'Please deliver only new items from 6 am to 2:30 pm to the following location: 
At the corner of 1100 Veterans Blvd, turn south on to Walnut Street
Go to the loading dock of Supply Chain (off of Walnut Street, behind the Emergency Dept.)',
      'New packaged equipment only ',
      '37.4893313',
      '-122.223976'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Redwood City'
        AND o.latitude = '37.4893313'
        AND o.longitude = '-122.223976'));

COMMIT;
