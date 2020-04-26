
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
      'HSHS St. Joseph''s Hospital',
      '12866 Troxler Ave
Highland, IL 62249',
      'Highland',
      'IL',
      '',
      'Unsure',
      '38.7546339',
      '-89.6675851'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HSHS St. Joseph''s Hospital'
        AND o.latitude = '38.7546339'
        AND o.longitude = '-89.6675851'));

COMMIT;
