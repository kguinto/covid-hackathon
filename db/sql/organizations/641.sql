
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
      'Morgan Hill Imaging',
      '16130 Juan Hernandez Drive, Suite 106
Morgan Hill, CA 95037',
      'Morgan Hill',
      'CA',
      'We will accept curbside deliveries , you can call us at 408.465.2555 or by mail.  Thank you!! :))',
      'Yes',
      '37.1201347',
      '-121.6294686'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morgan Hill Imaging'
        AND o.latitude = '37.1201347'
        AND o.longitude = '-121.6294686'));

COMMIT;
