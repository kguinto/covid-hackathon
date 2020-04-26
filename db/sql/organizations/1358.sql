
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
      'D&S Community Services',
      '6800 West Gate Blvd #102
Austin, TX 78745',
      'Austin',
      'TX',
      'Ring door bell, someone will pick up from outside. Or mail. ',
      'Yes',
      '30.2093184',
      '-97.8151247'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('We have 4 boxes of surgical masks only. Cannot get ANY from our vendors',
    (SELECT id FROM organizations o
      WHERE o.name = 'D&S Community Services'
        AND o.latitude = '30.2093184'
        AND o.longitude = '-97.8151247'));

COMMIT;
