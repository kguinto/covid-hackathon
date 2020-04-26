
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
      'Malibu Urgent Care',
      '23656 Pacific Coast Highway
Malibu, CA 90265',
      'Malibu',
      'CA',
      '',
      'Yes',
      '34.034222',
      '-118.6903244'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Malibu Urgent Care'
        AND o.latitude = '34.034222'
        AND o.longitude = '-118.6903244'));

COMMIT;
