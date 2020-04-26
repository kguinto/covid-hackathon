
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
      'Swedish Mill Creek Emergency Department',
      '13020 Meridian Ave S
Everett, WA 98208',
      'Everett',
      'WA',
      'Go to the front desk of the Emergency Department- if no one can accept donations there ask them to get one of the ER doctors.',
      'Yes',
      '47.8785543',
      '-122.2343383'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Mill Creek Emergency Department'
        AND o.latitude = '47.8785543'
        AND o.longitude = '-122.2343383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Mill Creek Emergency Department'
        AND o.latitude = '47.8785543'
        AND o.longitude = '-122.2343383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Mill Creek Emergency Department'
        AND o.latitude = '47.8785543'
        AND o.longitude = '-122.2343383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Mill Creek Emergency Department'
        AND o.latitude = '47.8785543'
        AND o.longitude = '-122.2343383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Mill Creek Emergency Department'
        AND o.latitude = '47.8785543'
        AND o.longitude = '-122.2343383'));

COMMIT;
