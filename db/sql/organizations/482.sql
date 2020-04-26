
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
      'Morris Hospital',
      '150 W High St
Morris, IL 60450',
      'Morris',
      'IL',
      'Direct Shipments, Courier, Direct Pick Up ',
      '',
      '41.3699958',
      '-88.4266323'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morris Hospital'
        AND o.latitude = '41.3699958'
        AND o.longitude = '-88.4266323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morris Hospital'
        AND o.latitude = '41.3699958'
        AND o.longitude = '-88.4266323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morris Hospital'
        AND o.latitude = '41.3699958'
        AND o.longitude = '-88.4266323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Health grade N95 Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morris Hospital'
        AND o.latitude = '41.3699958'
        AND o.longitude = '-88.4266323'));

COMMIT;
