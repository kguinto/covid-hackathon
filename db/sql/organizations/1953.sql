
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
      'Foundation OBGYN',
      '10 Prospect St #401
Nashua, NH 03060',
      'Nashua',
      'NH',
      'Drop off available Monday through Friday in Lobby or Curbside. Call if leaving curbside. Mail is also great!',
      'Yes',
      '42.7567069',
      '-71.4607795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foundation OBGYN'
        AND o.latitude = '42.7567069'
        AND o.longitude = '-71.4607795'));

COMMIT;
