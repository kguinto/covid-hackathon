
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
      'North Hill Internal and Integrative Medicine',
      '1631 Midtown Place, Unit 101
Raleigh, NC 27609',
      'Raleigh',
      'NC',
      '',
      'Yes',
      '35.8308946',
      '-78.6096089'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hill Internal and Integrative Medicine'
        AND o.latitude = '35.8308946'
        AND o.longitude = '-78.6096089'));

COMMIT;
