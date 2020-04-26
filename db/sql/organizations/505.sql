
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
      'Pardee Hospital',
      '800 N Justice St
Hendersonville, NC 28791',
      'Hendersonville',
      'NC',
      '',
      'Unsure',
      '35.3207468',
      '-82.4677888'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pardee Hospital'
        AND o.latitude = '35.3207468'
        AND o.longitude = '-82.4677888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pardee Hospital'
        AND o.latitude = '35.3207468'
        AND o.longitude = '-82.4677888'));

COMMIT;
