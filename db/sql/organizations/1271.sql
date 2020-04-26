
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
      'Kona Community Hospital',
      '76-940 Hualalai Rd #2
Kailua-Kona, HI 96740',
      'Kailua-Kona',
      'HI',
      'ATTN: Anne Broderson. No special instructions',
      'Yes',
      '19.6123058',
      '-155.9525039'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kona Community Hospital'
        AND o.latitude = '19.6123058'
        AND o.longitude = '-155.9525039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kona Community Hospital'
        AND o.latitude = '19.6123058'
        AND o.longitude = '-155.9525039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kona Community Hospital'
        AND o.latitude = '19.6123058'
        AND o.longitude = '-155.9525039'));

COMMIT;
