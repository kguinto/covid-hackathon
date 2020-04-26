
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
      'Ability Beyond Disability',
      '4 Berkshire Boulevard
Bethel, CT 06801',
      'Bethel',
      'CT',
      'Drop off curbside or Mail to ATTN: Carrie O''Connell',
      'No',
      '41.4187056',
      '-73.4013996'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Blood pressure cuffs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ability Beyond Disability'
        AND o.latitude = '41.4187056'
        AND o.longitude = '-73.4013996'));

COMMIT;
