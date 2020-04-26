
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
      'Chandler Regional ',
      '1308 W Lark Dr
Chandler, AZ 85286',
      'Chandler',
      'AZ',
      'Residence. Outside front door',
      'Yes',
      '33.2702709',
      '-111.8639617'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chandler Regional '
        AND o.latitude = '33.2702709'
        AND o.longitude = '-111.8639617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chandler Regional '
        AND o.latitude = '33.2702709'
        AND o.longitude = '-111.8639617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chandler Regional '
        AND o.latitude = '33.2702709'
        AND o.longitude = '-111.8639617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chandler Regional '
        AND o.latitude = '33.2702709'
        AND o.longitude = '-111.8639617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chandler Regional '
        AND o.latitude = '33.2702709'
        AND o.longitude = '-111.8639617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chandler Regional '
        AND o.latitude = '33.2702709'
        AND o.longitude = '-111.8639617'));

COMMIT;
