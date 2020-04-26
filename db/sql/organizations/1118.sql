
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
      'Columbia NYP',
      '104 Haven Ave
New York, NY 10032',
      'New York - Manhattan',
      'NY',
      'Jaharis Simulation Center
Attn: David Deitsch
',
      'Yes',
      '40.844768',
      '-73.9426465'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia NYP'
        AND o.latitude = '40.844768'
        AND o.longitude = '-73.9426465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia NYP'
        AND o.latitude = '40.844768'
        AND o.longitude = '-73.9426465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia NYP'
        AND o.latitude = '40.844768'
        AND o.longitude = '-73.9426465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia NYP'
        AND o.latitude = '40.844768'
        AND o.longitude = '-73.9426465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia NYP'
        AND o.latitude = '40.844768'
        AND o.longitude = '-73.9426465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Columbia NYP'
        AND o.latitude = '40.844768'
        AND o.longitude = '-73.9426465'));

COMMIT;
