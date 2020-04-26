
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
      'Sistersville General Hospital',
      '314 S Wells St
Sistersville, WV 26175',
      'Sistersville',
      'WV',
      'Deck door access with door bell on South Wells St Sistersville WV 26175',
      'Yes',
      '39.5586939',
      '-81.0041568'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sistersville General Hospital'
        AND o.latitude = '39.5586939'
        AND o.longitude = '-81.0041568'));

COMMIT;
