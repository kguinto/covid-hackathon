
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
      'The Doctors Office of Manalapan',
      '120 Craig Rd
Manalapan Township, NJ 07726',
      'Manalapan Township',
      'NJ',
      '',
      'Yes',
      '40.2863875',
      '-74.2964668'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Manalapan'
        AND o.latitude = '40.2863875'
        AND o.longitude = '-74.2964668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Manalapan'
        AND o.latitude = '40.2863875'
        AND o.longitude = '-74.2964668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Manalapan'
        AND o.latitude = '40.2863875'
        AND o.longitude = '-74.2964668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Manalapan'
        AND o.latitude = '40.2863875'
        AND o.longitude = '-74.2964668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Manalapan'
        AND o.latitude = '40.2863875'
        AND o.longitude = '-74.2964668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of Manalapan'
        AND o.latitude = '40.2863875'
        AND o.longitude = '-74.2964668'));

COMMIT;
