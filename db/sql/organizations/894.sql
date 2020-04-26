
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
      'Swedish Redmond Emergency Department',
      '18100 NE Union Hill Rd
Redmond, WA 98052',
      'Redmond',
      'WA',
      'Go to the front desk of the Emergency Department- if no one can accept donations there ask them to get one of the ER doctors.',
      'Yes',
      '47.6763693',
      '-122.0990518'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Redmond Emergency Department'
        AND o.latitude = '47.6763693'
        AND o.longitude = '-122.0990518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Redmond Emergency Department'
        AND o.latitude = '47.6763693'
        AND o.longitude = '-122.0990518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Redmond Emergency Department'
        AND o.latitude = '47.6763693'
        AND o.longitude = '-122.0990518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Redmond Emergency Department'
        AND o.latitude = '47.6763693'
        AND o.longitude = '-122.0990518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Redmond Emergency Department'
        AND o.latitude = '47.6763693'
        AND o.longitude = '-122.0990518'));

COMMIT;
