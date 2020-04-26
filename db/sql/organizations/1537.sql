
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
      'The Bridge, Inc. - Clinical HQ',
      '248 W 108th St
New York, NY 10025',
      'New York - Manhattan',
      'NY',
      'Mail to: 248 West 108th Street, 6th Floor, NYC NY 10025 ATTN: Jenna Tine, LCSW, SVP',
      'Yes',
      '40.8025117',
      '-73.9669362'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge, Inc. - Clinical HQ'
        AND o.latitude = '40.8025117'
        AND o.longitude = '-73.9669362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge, Inc. - Clinical HQ'
        AND o.latitude = '40.8025117'
        AND o.longitude = '-73.9669362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge, Inc. - Clinical HQ'
        AND o.latitude = '40.8025117'
        AND o.longitude = '-73.9669362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge, Inc. - Clinical HQ'
        AND o.latitude = '40.8025117'
        AND o.longitude = '-73.9669362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Bridge, Inc. - Clinical HQ'
        AND o.latitude = '40.8025117'
        AND o.longitude = '-73.9669362'));

COMMIT;
