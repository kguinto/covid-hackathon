
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
      'Plattsburgh City School District',
      '1 Clifford Drive
Plattsburgh, NY 12901',
      'Plattsburgh',
      'NY',
      'Attention Norbert Neiderer, (518) 726-6721, Curbside or Mail to Address',
      'Yes',
      '44.6867111',
      '-73.4709187'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh City School District'
        AND o.latitude = '44.6867111'
        AND o.longitude = '-73.4709187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh City School District'
        AND o.latitude = '44.6867111'
        AND o.longitude = '-73.4709187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh City School District'
        AND o.latitude = '44.6867111'
        AND o.longitude = '-73.4709187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh City School District'
        AND o.latitude = '44.6867111'
        AND o.longitude = '-73.4709187'));

COMMIT;
