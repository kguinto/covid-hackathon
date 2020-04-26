
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
      'Hospice of the South Coast, LLC',
      '10251 Vista Sorrento Pkwy, Suite 270
San Diego, CA 92121',
      'San Diego',
      'CA',
      '10251 Vista Sorrento Pkwy, Ste 270',
      'Yes',
      '32.8955807',
      '-117.213916'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the South Coast, LLC'
        AND o.latitude = '32.8955807'
        AND o.longitude = '-117.213916'));

COMMIT;
