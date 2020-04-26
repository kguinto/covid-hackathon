
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
      'Summit Commons',
      '99 Hillside Ave
Providence, RI 02906',
      'Providence ',
      'RI',
      'Drop off in between double doors, ring buzzer',
      'Yes',
      '41.856175',
      '-71.394771'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summit Commons'
        AND o.latitude = '41.856175'
        AND o.longitude = '-71.394771'));

COMMIT;
