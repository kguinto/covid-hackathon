
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
      'Urgent Care for Kids',
      '6109 S Cooper St
Arlington, TX 76001',
      'Arlington',
      'TX',
      'Office Manager',
      'Yes',
      '32.6453749',
      '-97.1328464'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.6453749'
        AND o.longitude = '-97.1328464'));

COMMIT;
