
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
      'Tacoma General Hospital',
      '315 M M.L.K. Jr Way
Tacoma, WA 98405',
      'Tacoma',
      'WA',
      'Drop at the ER',
      'No',
      '47.2593601',
      '-122.4529681'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General Hospital'
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General Hospital'
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General Hospital'
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General Hospital'
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

COMMIT;
