
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
      'Namaste Home Health and Hospice',
      '6000 E Evans Ave Suite 2-400
Denver, CO 80222',
      'Denver',
      'CO',
      'Our office is only staffed with one person daily. If the door is closed please leave just outside the door. We have a secure premise that is safe and we occupy our entire floor. ',
      'Yes',
      '39.6778921',
      '-104.9178682'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Namaste Home Health and Hospice'
        AND o.latitude = '39.6778921'
        AND o.longitude = '-104.9178682'));

COMMIT;
