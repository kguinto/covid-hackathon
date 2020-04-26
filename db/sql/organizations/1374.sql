
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
      'Care Dimensions Hospice & Palliative Care',
      '75 Sylvan St Suite B-102
Danvers, MA 01923',
      'Danvers',
      'MA',
      'Please contact Phil Cibelli at pcibelli@caredimensions.org to make arrangements to drop off or have items picked up. Or you can mail them to Care Dimensions, 75 Sylvan St. Suite B-102, Danvers MA 01923. If you have questions, please call 978-750-9362 and leave a message. We will return your call as soon as possible. ',
      'Yes',
      '42.547008',
      '-70.9450544'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Dimensions Hospice & Palliative Care'
        AND o.latitude = '42.547008'
        AND o.longitude = '-70.9450544'));

COMMIT;
