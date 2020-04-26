
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
      'Hospice Cleveland County ',
      '951 Wendover Heights Dr
Shelby, NC 28150',
      'Shelby ',
      'NC',
      'Front door',
      'Yes',
      '35.3107442',
      '-81.518926'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice Cleveland County '
        AND o.latitude = '35.3107442'
        AND o.longitude = '-81.518926'));

COMMIT;
