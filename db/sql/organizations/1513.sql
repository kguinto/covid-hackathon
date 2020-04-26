
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
      'Autumn Glen',
      '3715 Coon Rapids Blvd NW
Minneapolis, MN 55433',
      'Coon Rapids',
      'MN',
      'Leave at front desk',
      'Yes',
      '45.1818631',
      '-93.3605659'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Autumn Glen'
        AND o.latitude = '45.1818631'
        AND o.longitude = '-93.3605659'));

COMMIT;
