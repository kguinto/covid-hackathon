
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
      'Tacoma General ',
      '315 M.L.K. Jr Way
Tacoma, WA 98405',
      'Tacoma',
      'WA',
      'Nurse Erika Berger (253) 334-9463',
      'Yes',
      '47.2593601',
      '-122.4529681'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tacoma General '
        AND o.latitude = '47.2593601'
        AND o.longitude = '-122.4529681'));

COMMIT;
