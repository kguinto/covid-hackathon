
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
      'Plattsburgh Family Health',
      '87 Plaza Blvd
Plattsburgh, NY 12901',
      'Plattsburgh',
      'NY',
      '',
      'No',
      '44.7020765',
      '-73.4978927'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Family Health'
        AND o.latitude = '44.7020765'
        AND o.longitude = '-73.4978927'));

COMMIT;
