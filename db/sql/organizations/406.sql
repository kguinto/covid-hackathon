
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
      'Mercy-GoHealth Urgent Care',
      '11445 Olive Blvd
Creve Coeur, MO 63141',
      'Creve Coeur',
      'MO',
      'Drop off or pick up locally',
      'Unsure',
      '38.6728643',
      '-90.4339883'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy-GoHealth Urgent Care'
        AND o.latitude = '38.6728643'
        AND o.longitude = '-90.4339883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy-GoHealth Urgent Care'
        AND o.latitude = '38.6728643'
        AND o.longitude = '-90.4339883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy-GoHealth Urgent Care'
        AND o.latitude = '38.6728643'
        AND o.longitude = '-90.4339883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy-GoHealth Urgent Care'
        AND o.latitude = '38.6728643'
        AND o.longitude = '-90.4339883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy-GoHealth Urgent Care'
        AND o.latitude = '38.6728643'
        AND o.longitude = '-90.4339883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy-GoHealth Urgent Care'
        AND o.latitude = '38.6728643'
        AND o.longitude = '-90.4339883'));

COMMIT;
