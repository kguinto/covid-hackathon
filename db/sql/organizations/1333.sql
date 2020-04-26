
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
      'Buena Vista Hospice, Home Health and Palliative Care',
      '2545 W Hillcrest Dr #130A
Thousand Oaks, CA 91320',
      'Thousand Oaks',
      'CA',
      'Please go to double doors and ring door buzzer for assistance. ',
      'No',
      '34.1887369',
      '-118.9326911'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buena Vista Hospice, Home Health and Palliative Care'
        AND o.latitude = '34.1887369'
        AND o.longitude = '-118.9326911'));

COMMIT;
