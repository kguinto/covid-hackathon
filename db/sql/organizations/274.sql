
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
      'Desert Springs Hospital',
      '2075 E Flamingo Rd
Las Vegas, NV 89119',
      'Las Vegas',
      'NV',
      'Attn: Emergency Department',
      'Yes',
      '36.1128825',
      '-115.1249154'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Springs Hospital'
        AND o.latitude = '36.1128825'
        AND o.longitude = '-115.1249154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Springs Hospital'
        AND o.latitude = '36.1128825'
        AND o.longitude = '-115.1249154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Springs Hospital'
        AND o.latitude = '36.1128825'
        AND o.longitude = '-115.1249154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPRs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Springs Hospital'
        AND o.latitude = '36.1128825'
        AND o.longitude = '-115.1249154'));

COMMIT;
