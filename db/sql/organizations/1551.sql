
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
      'West Florida Emergency room ',
      '8383 N Davis Hwy
Pensacola, FL 32514',
      'Pensacola',
      'FL',
      'To triage in the ER',
      'Yes',
      '30.5156353',
      '-87.2190381'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Florida Emergency room '
        AND o.latitude = '30.5156353'
        AND o.longitude = '-87.2190381'));

COMMIT;
