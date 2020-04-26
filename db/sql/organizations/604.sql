
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
      'Rooks County Health Center',
      '1210 N Washington St
Plainville, KS 67663',
      'Plainville',
      'KS',
      'Mail',
      'Unsure',
      '39.2470434',
      '-99.2961252'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rooks County Health Center'
        AND o.latitude = '39.2470434'
        AND o.longitude = '-99.2961252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rooks County Health Center'
        AND o.latitude = '39.2470434'
        AND o.longitude = '-99.2961252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rooks County Health Center'
        AND o.latitude = '39.2470434'
        AND o.longitude = '-99.2961252'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rooks County Health Center'
        AND o.latitude = '39.2470434'
        AND o.longitude = '-99.2961252'));

COMMIT;
